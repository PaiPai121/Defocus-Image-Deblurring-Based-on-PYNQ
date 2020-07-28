from numpy.core.records import array
from GaussianAndImage import *

def deconv(array,kernel,lam):
    #Timer = clock()
    width = array.shape[0]
    height = array.shape[1]

    F_array = np.fft.fft2(array)
    F_kernel = np.fft.fft2(kernel,s = (width,height))
    ######## 计算原图f的估计值
    new_F_array = [  np.conj(np.abs(F_kernel)/(np.abs(F_kernel)**2 + lam )) ]*F_array

    noise = NoiseEstimate(new_F_array,F_kernel,lam)

    new_array = np.fft.ifft2(new_F_array[0])
    new_array = np.asarray(new_array, np.uint8)
    return new_array

def NoiseEstimate(F_array,F_kernel,lam):
    noise = np.sum(np.sum(np.conj(np.abs(F_kernel)/(np.abs(F_kernel)**2 + lam ))))
    return noise 

def denoising(F_array):
    pass