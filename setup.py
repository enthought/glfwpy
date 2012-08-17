from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
import sys

platform = sys.platform

if sys.platform == 'darwin':
    ext_modules = [Extension("glfw", ["glfw.pyx"],
        libraries=['glfw'],
        extra_link_args=['-framework', 'Cocoa'])]
elif sys.platform == 'win32':
    ext_modules = [Extension("glfw", ["glfw.pyx"],
    libraries=['glfw'],
    include_dirs=['Add path like c:/foo/bar/baz/glfw-x.x.x/include'],
    library_dirs=['Add path like c:/foo/bar/bax/glfw-x.x.x/lib/win32']
    )]
elif sys.platform.startswith('linux'):
    ext_modules = [Extension("glfw", ["glfw.pyx"],
    libraries=['glfw'],
    include_dirs=['Add path like c:/foo/bar/baz/glfw-x.x.x/include'],
    library_dirs=['Add path like c:/foo/bar/bax/glfw-x.x.x/lib/win32']
    )]
elif sys.platform.startswith('freebsd'):
    ext_modules = [Extension("glfw", ["glfw.pyx"],
    libraries=['glfw'],
    include_dirs=['Add path like c:/foo/bar/baz/glfw-x.x.x/include'],
    library_dirs=['Add path like c:/foo/bar/bax/glfw-x.x.x/lib/win32']
    )]
else:
    print 'The glfw spaceship has not yet arrived on the exotic platform %s' % (platform)
    sys.exit(-1)

setup(
  name='Cythonized wrappers for glfw',
  cmdclass={'build_ext': build_ext},
  ext_modules=ext_modules
)
