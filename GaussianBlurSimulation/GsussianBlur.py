from PIL import Image
from matplotlib.pyplot import imsave
import numpy as np


from time import clock

from GaussianAndImage import *



def GaussianBlur(array, kernel , mode):
    '''高斯模糊'''
    Timer = clock()
    width = array.shape[0]
    height = array.shape[1]
    if mode == 'fft':
        F_array = np.fft.fft2(array)
        F_kernel = np.fft.fft2(kernel,s = (width,height))
        new_F_array = F_array * F_kernel
        new_array = np.fft.ifft2(new_F_array)
        new_array = np.asarray(new_array, np.uint8)
        print("耗费时间：",Timer)
        return new_array
    
    if mode == 'conv':
        new_array = np.empty(array.shape)
        r = (kernel.shape[0]-1)//2
        for i in range(r+1,width - r):
            for j in range(r + 1,height - r):
                o = 0
                for x in range(i-r,i+r+1):
                    p = 0
                    for y in range(j-r,j+r+1):
                        new_array[i][j] += array[x][y] * kernel[o][p]
                        p += 1
                    o += 1
        new_array = np.asarray(new_array, np.uint8)
        print("耗费时间：",Timer)
        return new_array


if __name__ == "__main__":
    r = 5  ## 卷积核半径
    kernel = KernelMaker(r)
    ## 测试一下生成卷积核
    # test_kernelCreate() 
    path = r'.\HLS\3.bmp'
    img = Image.open(path)
    nR,nG,nB = Channel_partial(img)

    FnR = GaussianBlur(nR,kernel,'fft')
    FnG = GaussianBlur(nG,kernel,'fft')
    FnB = GaussianBlur(nB,kernel,'fft')

    newimg = Channel_Compound(FnR,FnG,FnB)
    newimg.save(r'.\HLS\blurImg.bmp')
