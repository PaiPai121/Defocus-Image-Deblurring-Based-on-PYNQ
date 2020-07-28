from time import clock
import numpy as np

def LaplaceKernel():  ### r 是半径
    '''拉普拉斯锐化卷积核'''
    kernel = np.array([[1,4,1],[4,-20,4],[1,4,1]])
    return kernel

def LaplaceSharpen(array):
    '''拉普拉斯锐化'''
    kernel = LaplaceKernel()
    Timer = clock()
    width = array.shape[0]
    height = array.shape[1]

    F_array = np.fft.fft2(array)
    F_kernel = np.fft.fft2(kernel,s = (width,height))
    ######## 计算原图f的估计值
    new_F_array = F_kernel*F_array
    new_array = np.fft.ifft2(new_F_array)
    new_array = np.asarray(new_array, np.uint8)
    print("耗费时间：",Timer)
    return new_array
