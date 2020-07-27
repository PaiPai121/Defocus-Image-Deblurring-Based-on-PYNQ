from PIL import Image
from matplotlib.pyplot import imsave
import numpy as np
from numpy import pi
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt

from time import clock
from GaussianAndImage import *


BasePath= r'E:\Xilinx失焦\Blur'

def WienerFilter(array, kernel , k):
    '''维纳滤波'''
    Timer = clock()
    width = array.shape[0]
    height = array.shape[1]

    F_array = np.fft.fft2(array)
    F_kernel = np.fft.fft2(kernel,s = (width,height))
    ######## 计算原图f的估计值
    new_F_array = [ 1/F_kernel * (np.abs(F_kernel)**2/(np.abs(F_kernel)**2 + k)) ]*F_array
    new_array = np.fft.ifft2(new_F_array[0])
    new_array = np.asarray(new_array, np.uint8)
    print("耗费时间：",Timer)
    return new_array

if __name__ == "__main__":
    img = Image.open(BasePath+r'\blur10.jpg')
    r = 20
    k = 0.5
    kernel = KernelMaker(r)
    nR,nG,nB = Channel_partial(img)
    new_nR = WienerFilter(nR,kernel,k)
    new_nG = WienerFilter(nG,kernel,k)
    new_nB = WienerFilter(nB,kernel,k)
    newimg = Channel_Compound(new_nR,new_nG,new_nB)
    newimg.save('Wiener'+str(r)+'.jpg')
    newimg.show()