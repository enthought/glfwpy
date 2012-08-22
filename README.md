glfwpy
======

Pythonic wrappers for glfw that support modern opengl (3.2+). Version 4.3 which is the latest version as of this writing is supported.

![stanford bunny](https://github.com/enthought/glfwpy/raw/master/screenshots/bunny.png "Stanford bunny rendered using opengl")


Requirements:

1) Python: http://www.python.org

2) GLFW: http://www.glfw.org/

3) PyOpenGL from trunk: http://pyopengl.sourceforge.net/

4) Cython: http://www.cython.org

Documentation:
1) Please refer to the glfw docs at http://www.glfw.org for glfw documentation

2) Please refer to examples folder for examples showing use of the api

Caveats:
The following part of the glfw api are not wrapped
a) Imaging functions (Users are expected to use a python imaging library to load textures)

b) Threading functions (Users are expected to use the python threading library)

c) glfwGetProcAddress

Convention:
This is almost a 1:1 wrapping of the glfw api. The glfw prefix has been dropped from function calls and constants in the Python versions.
