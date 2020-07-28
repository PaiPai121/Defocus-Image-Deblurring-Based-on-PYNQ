from PIL import Image
from matplotlib.pyplot import imsave
import numpy as np
from numpy import pi
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt

from time import clock
from GaussianAndImage import *

def InverseFilter(array, kernel,lam):
    '''逆滤波'''
    Timer = clock()
    width = array.shape[0]
    height = array.shape[1]

    F_array = np.fft.fft2(array)
    F_kernel = np.fft.fft2(kernel,s = (width,height))
    ######## 计算原图f的估计值
    new_F_array = F_array/(F_kernel+lam)
    new_array = np.fft.ifft2(new_F_array)
    new_array = np.asarray(new_array, np.uint8)
    print("耗费时间：",Timer)
    return new_array*lam

if __name__ == "__main__":
    r = 15  ## 卷积核半径
    kernel = KernelMaker(r)

    img = Image.open(r'C:\Users\kzz69\Desktop\2.jpg')   # (BasePath+r'\blur10.jpg')
    img.show()
    nR,nG,nB = Channel_partial(img)
    lam = 1
    FnR = InverseFilter(nR,kernel,lam)
    FnG = InverseFilter(nG,kernel,lam)
    FnB = InverseFilter(nB,kernel,lam)

    newimg = Channel_Compound(FnR,FnG,FnB)
    newimg.show()