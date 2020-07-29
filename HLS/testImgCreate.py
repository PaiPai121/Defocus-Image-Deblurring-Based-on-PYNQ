from PIL import Image
import numpy as np
def createImage():
    a = np.zeros((3,3,3))
    for k in range(3):
        for i in range(3):
            for j in range(3):
                a[i][j][k] = (i+j)*40

    a = np.asarray(a, np.uint8)    
    Img = Image.fromarray(a)

    Img.show()
    Img.save('test.bmp')


if __name__ == "__main__":
    # createImage()
    I = Image.open(r'.\HLS\test.bmp')
    print("original:",np.array(I))
    I = Image.open(r'.\HLS\outputtest.png')
    print("\nnew:",np.array(I))
    