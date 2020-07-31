from PIL import Image
from matplotlib.pyplot import imsave
import numpy as np
from numpy import pi
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt

from time import clock

from numpy.lib.function_base import kaiser
from GaussianAndImage import *

from LaplaceSharpen import LaplaceSharpen

#BasePath= r'E:\XilinxDeblur\Blur'

def WienerFilter(array, kernel , k):
    '''维纳滤波'''
    Timer = clock()
    width = array.shape[0]
    height = array.shape[1]

    F_array = np.fft.fft2(array)
    F_kernel = np.fft.fft2(kernel,s = (width,height))
    # Surface3D(np.abs(F_array[width//5:width//5*4,height//5:height//5*4]))
    ######## 计算原图f的估计值
    new_F_array = [ 1/F_kernel * (np.abs(F_kernel)**2/(np.abs(F_kernel)**2 + k)) ]*F_array
    # new_F_array = [ 1/F_kernel * (np.conj(F_kernel)/(np.abs(F_kernel)**2 + k)) ]*F_array
    new_array = np.fft.ifft2(new_F_array[0])
    new_array = np.asarray(new_array, np.uint8)
    print("耗费时间：",Timer)
    return new_array

def RGBWienerFilter(img,kernel,k):
    nR,nG,nB = Channel_partial(img)
    new_nR = WienerFilter(nR,kernel,k)
    new_nG = WienerFilter(nG,kernel,k)
    new_nB = WienerFilter(nB,kernel,k)
    newimg = Channel_Compound(new_nR,new_nG,new_nB)
    return newimg



def LSdeconv(array,kernel,alpha):
    '''最小二乘反卷积'''
    diff_op_2 = np.array([[0,1,0],[1,-4,1],[0,1,0]])
    Timer = clock()
    width = array.shape[0]
    height = array.shape[1]

    F_array = np.fft.fft2(array)
    F_kernel = np.fft.fft2(kernel,s = (width,height))
    F_diff = np.fft.fft2(diff_op_2,s = (width,height))
    ######## 计算原图f的估计值
    new_F_array = [ 1/F_kernel * (np.abs(F_kernel)**2/(np.abs(F_kernel)**2 + alpha *(np.abs(F_diff))**2 )) ]*F_array
    new_array = np.fft.ifft2(new_F_array[0])
    new_array = np.asarray(new_array, np.uint8)
    return new_array

def LSdeconvFilter(img,kernel,alpha):
    nR,nG,nB = Channel_partial(img)
    new_nR = LSdeconv(nR,kernel,alpha)
    new_nG = LSdeconv(nG,kernel,alpha)
    new_nB = LSdeconv(nB,kernel,alpha)
    newimg = Channel_Compound(new_nR,new_nG,new_nB)
    return newimg


def RGBLaplaceSharpen(img):
    new_nR,new_nG,new_nB = Channel_partial(img)
    L_nR = LaplaceSharpen(new_nR)
    L_nG = LaplaceSharpen(new_nG)
    L_nB = LaplaceSharpen(new_nB)
    newnew_img = Channel_Compound(L_nR,L_nG,L_nB)
    return newnew_img

if __name__ == "__main__":
    img = Image.open(r'.\HLS\blurImg.bmp') 
    r = 3
    k = 11
    # img.show()
    kernel = KernelMaker(r)
    newimg = RGBWienerFilter(img,kernel,k)
    newimg.show()
    # newimg = LSdeconvFilter(img,kernel,k)
    # newimg.save('Wiener'+str(r)+'.jpg')
    # newimg.show("without Laplace")

    # newnew_img = RGBLaplaceSharpen(img)
    # #newnew_img.show("with Laplace")

    # nn = Image.fromarray(np.array(newimg)//20 + np.array(img))

    # nn.show()