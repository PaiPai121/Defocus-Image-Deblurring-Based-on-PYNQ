from GaussianAndImage import *

## L-R 迭代法

def conv(f1,f2):
    mheight = max(f1.shape[0],f2.shape[0])
    mwidth = max(f1.shape[1],f2.shape[1])
    F_f1 = np.fft.fft2(f1,[mheight,mwidth])
    F_f2 = np.fft.fft2(f2,[mheight,mwidth])
    return np.fft.ifft2(F_f1*F_f2)

def LucyRichardson (f,g,h):
    # width = array.shape[0]
    # height = array.shape[1]
    th = np.flipud(np.fliplr(h))
    # f = f[0]
    if f.shape[0] == 1:
        f = f[0]
    f = f * [ conv(th  , g/conv(h,f)) ]
    ######## 计算原图f的估计值
    return f

def LRiter(array,kernel,k=5):
    f = array
    for i in range(k):
        f = LucyRichardson(f,array,kernel)
    new_array = np.fft.ifft2(f)
    new_array = np.asarray(new_array, np.uint8)
    return new_array

def LRremake(img,k):
    kernel = KernelMaker(r,mode = 'homo')
    nR,nG,nB = Channel_partial(img)
    new_nR = LRiter(nR,kernel,k)
    new_nG = LRiter(nG,kernel,k)
    new_nB = LRiter(nB,kernel,k)
    newimg = Channel_Compound(new_nR,new_nG,new_nB)
    return newimg

if __name__ == "__main__":
    img = Image.open(r'C:\Users\kzz69\Desktop\2.jpg')   # (BasePath+r'\blur10.jpg')
    r = 4
    k = 0.01
    img.show()
    newimg = LRremake(img,5)
    newimg.show()


    
    # newimg = LSdeconvFilter(img,kernel,k)
    # newimg.save('Wiener'+str(r)+'.jpg')
    