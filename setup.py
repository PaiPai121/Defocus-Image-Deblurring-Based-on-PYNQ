
from distutils.core import setup
  
files = ["things/*"]
 
setup(name = "Defocus-Image-Deblurring-Based-on-PYNQ",
    version = "1.00",
    description = "Image with simple Gaussian blur can be deblurred by this project",
    author = "Zzk,Wjy,Snj,Gb",
    author_email = "zhangzk19@mails.tsinghua.edu.cn",
    #Name the folder where your packages live:
    #(If you have other packages (dirs) or modules (py files) then
    #put them into the package directory - they will be found recursively.)
    package_dir = {'':'JupyterNotebook'}
    packages = [''],
)
