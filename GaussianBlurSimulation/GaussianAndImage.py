from PIL import Image
import numpy as np
from numpy import pi

def KernelMaker(r):  ### r 是半径
    '''高斯分布卷积核'''
    
    kernel = np.empty((2*r+1,2*r+1))
    summat = 0 ## 矩阵求和，用来归一化
    for i in range(0,2*r+1):
        for j in range(0,2*r+1):
            dr2 = 2*(r**2) # double r^2 
            gaussp = (1/(pi*dr2)) * np.exp( -((i-r)**2 + (j-r)**2) / (dr2)  )
            kernel[i][j] = gaussp
            summat += gaussp
    
    kernel = kernel/summat## 归一化
    if __name__ == "__main__":
        print("高斯函数矩阵为\n",kernel)
    return kernel

def Channel_partial(img):
    width = img.size[0]
    height = img.size[1]
    nR = np.empty((width,height))
    nG = np.empty((width,height))
    nB = np.empty((width,height))

    # for i in range(0,width):
    #     for j in range(0,height):
    #         nR[i][j]=img.getpixel((i,j))[0] 
    #         nG[i][j]=img.getpixel((i,j))[1] 
    #         nB[i][j]=img.getpixel((i,j))[2] 
    imgArray = np.array(img)

    nR = imgArray[:,:,0]
    nG = imgArray[:,:,1]
    nB = imgArray[:,:,2]
    return nR,nG,nB

def Channel_Compound(nR,nG,nB):
    width = nR.shape[0]
    height = nR.shape[1]
    imgArray = np.empty((width,height,3))
    imgArray[:,:,0] = nR
    imgArray[:,:,1] = nG
    imgArray[:,:,2] = nB
    imgArray = np.asarray(imgArray, np.uint8)
    img = Image.fromarray(imgArray)
    return img