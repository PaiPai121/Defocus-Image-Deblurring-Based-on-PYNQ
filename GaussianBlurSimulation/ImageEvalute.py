from GaussianAndImage import *
from PIL import Image
imgOut = Image.open("test_out.jpg")
imgIni = Image.open("test_img_gray.jpg").convert('L')
imgBlur = Image.open("blur.jpg").convert('L')
from numpy import mean
# nRi,nGi,nBi = Channel_partial(imgIni)

# nRo,nGo,nBo = Channel_partial(imgOut)

# print ( sum (  abs(nRi - nRo) + abs(nGo - nGi)  +abs( nBo - nBi)   ))

outMean = mean(mean(np.array(imgOut)))

inMean = mean(mean( np.array(imgIni)))

blurMean = mean(mean(np.array( imgBlur  )))

norm1 =  np.linalg.norm(    np.array(imgOut)/outMean - np.array(imgIni)/inMean     ,ord = 2  )

norm2 =  np.linalg.norm(    np.array(imgIni)/inMean - np.array(imgBlur)/blurMean    ,ord = 2  )

print( "复原图像与原图像距离："  ,norm1 )

print( "模糊图像与原图像距离："  ,norm2 )
