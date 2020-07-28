from PIL import Image
import numpy as np
I1 = Image.open(r'./images/3.bmp')
I2 = Image.open(r'./images/4.bmp')

I1a = np.array(I1)
I2a = np.array(I2)

I1G = I1.convert('L')
I2G = I2.convert('L')

I1Ga = np.array(I1G)
I2Ga = np.array(I2G)

print("gg")