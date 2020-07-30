from os import write
from PIL import Image
import numpy as np
from numpy import pi
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
def KernelMaker(r,mode = 'Gauss'):  ### r 是半径
    kernel = np.zeros((2*r+1,2*r+1))
    summat = 0 ## 矩阵求和，用来归一化
    '''高斯分布卷积核'''
    if mode == 'Gauss':
        for i in range(0,2*r+1):
            for j in range(0,2*r+1):
                dr2 = 2*(r**2) # double r^2 
                gaussp = np.exp( -((i-r)**2 + (j-r)**2) / (dr2)  )
                kernel[i][j] = gaussp
                summat += gaussp
        
        kernel = kernel/summat## 归一化
        # if __name__ == "__main__":
            # print("高斯函数矩阵为\n",kernel)

    ### 均匀分布卷积核
    elif (mode == 'homo'):
        r2 = r**2
        for i in range(0,2*r+1):
            for j in range(0,2*r+1):
                if (i-r)**2 + (j-r)**2 < r**2:
                    kernel[i][j] = 1/r2
                    summat += 1/r2
        kernel /= summat
        if __name__ == "__main__":
            print("均匀分布卷积核为\n",kernel)
            print(sum(sum(kernel)))
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

def Surface3D(array):
    width = array.shape[0]
    height = array.shape[1]
    x_values = np.arange(0,height,1) - height // 2
    y_values = np.arange(0,width ,1) - width // 2
    X,Y = np.meshgrid(x_values,y_values)
    fig = plt.figure()
    ax = Axes3D(fig)
    ax.plot_surface(X,Y,array)
    plt.show()



def test_kernelCreate():
    r = 10
    kernel = KernelMaker(r,mode = 'homo')
    Surface3D(kernel)
    
    

if __name__ == "__main__":
    # test_kernelCreate()
    kernel = KernelMaker(10)
    k_F = np.fft.ifft2(kernel,[512,512])
    k_F *= 1e8
    print(kernel[10][10])
    print(sum(sum(kernel)))
    datName = "./HLS/kernelReal.dat"
    f=open(datName, "a+")
    # f.write('{')
    for i in range(k_F.shape[0]):
        f.write('{')
        for j in range(k_F.shape[1]):
            f.write( str(round(k_F[i][j].real,4)))
            if j < k_F.shape[1]-1:
                f.write(',')
        f.write('}')
        if i < k_F.shape[0] - 1:
            f.write(',')
        f.write('\n')
    # f.write('}')
    f.close()


    datName = "./HLS/kernelImag.dat"
    f=open(datName, "a+")
    # f.write('{')
    for i in range(k_F.shape[0]):
        f.write('{')
        for j in range(k_F.shape[1]):
            f.write(str(round(k_F[i][j].imag,4)))
            if j < k_F.shape[1]-1:
                f.write(',')
        f.write('}')
        if i < k_F.shape[0] - 1:
            f.write(',')
        f.write('\n')
    # f.write('}')
    f.close()