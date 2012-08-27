from setuptools import setup, find_packages
from distutils.extension import Extension
from Cython.Distutils import build_ext
import sys

platform = sys.platform

if sys.platform == 'darwin':
    ext_modules = [Extension("glfwpy.glfw", ["glfwpy/glfw.pyx"],
        libraries=['glfw'],
        extra_link_args=['-framework', 'Cocoa'])]
elif sys.platform == 'win32':
    ext_modules = [Extension("glfwpy.glfw", ["glfwpy/glfw.pyx"],
    libraries=['glfw', 'opengl32'],
    include_dirs=['C:\Users\dman\Desktop\glfw-2.7.6\include'],
    library_dirs=['C:\Users\dman\Desktop\glfw-2.7.6\lib\win32']
    )]
elif sys.platform.startswith('linux'):
    ext_modules = [Extension("glfwpy.glfw", ["glfwpy/glfw.pyx"],
    libraries=['glfw']
    )]
elif sys.platform.startswith('freebsd'):
    ext_modules = [Extension("glfwpy.glfw", ["glfwpy/glfw.pyx"],
    include_dirs=['/usr/local/include'],
    library_dirs=['/usr/local/lib'],
    libraries=['glfw']
    )]
else:
    print 'The glfwpy spaceship has not yet arrived on the exotic platform %s' % (platform)
    sys.exit(-1)

print find_packages()

setup(
  name='glfwpy',
  version='0.0.1',
  author='Enthought, Inc',
  author_email='info@enthought.com',
  description='Python wrappers for the glfw cross platform toolkit',
  url='https://github.com/enthought/glfwpy',
  packages=find_packages(),
  cmdclass={'build_ext': build_ext},
  ext_modules=ext_modules
)
