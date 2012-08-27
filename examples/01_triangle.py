from glfwpy.glfw import *
import sys
import numpy as np
from OpenGL.GL import *
from OpenGL.arrays import ArrayDatatype
import ctypes


vertex = """
#version 330
in vec3 vin_position;
in vec3 vin_color;
out vec3 vout_color;

void main(void)
{
    vout_color = vin_color;
    gl_Position = vec4(vin_position, 1.0);
}
"""


fragment = """
#version 330
in vec3 vout_color;
out vec4 fout_color;

void main(void)
{
    fout_color = vec4(vout_color, 1.0);
}
"""

vertex_data = np.array([0.75, 0.75, 0.0,
                        0.75, -0.75, 0.0,
                        -0.75, -0.75, 0.0], dtype=np.float32)

color_data = np.array([1, 0, 0,
                        0, 1, 0,
                        0, 0, 1], dtype=np.float32)


class ShaderProgram(object):

    def __init__(self, vertex, fragment, geometry=None):
        self.program_id = glCreateProgram()
        vs_id = self.add_shader(vertex, GL_VERTEX_SHADER)
        frag_id = self.add_shader(fragment, GL_FRAGMENT_SHADER)

        glAttachShader(self.program_id, vs_id)
        glAttachShader(self.program_id, frag_id)
        glLinkProgram(self.program_id)

        if glGetProgramiv(self.program_id, GL_LINK_STATUS) != GL_TRUE:
            info = glGetProgramInfoLog(self.program_id)
            glDeleteProgram(self.program_id)
            glDeleteShader(vs_id)
            glDeleteShader(frag_id)
            raise RuntimeError('Error linking program: %s' % (info))
        glDeleteShader(vs_id)
        glDeleteShader(frag_id)

    def add_shader(self, source, shader_type):
        try:
            shader_id = glCreateShader(shader_type)
            glShaderSource(shader_id, source)
            glCompileShader(shader_id)
            if glGetShaderiv(shader_id, GL_COMPILE_STATUS) != GL_TRUE:
                info = glGetShaderInfoLog(shader_id)
                raise RuntimeError('Shader compilation failed: %s' % (info))
            return shader_id
        except:
            glDeleteShader(shader_id)
            raise

    def uniform_location(self, name):
        return glGetUniformLocation(self.program_id, name)

    def attribute_location(self, name):
        return glGetAttribLocation(self.program_id, name)


def key_callback(x, y):
    print 'Key: %s Action: %s pressed' % (x, y)

if __name__ == "__main__":
    if not Init():
        print 'GLFW initialization failed'
        sys.exit(-1)

    OpenWindowHint(OPENGL_VERSION_MAJOR, 3)
    OpenWindowHint(OPENGL_VERSION_MINOR, 2)
    OpenWindowHint(OPENGL_PROFILE, OPENGL_CORE_PROFILE)
    OpenWindowHint(OPENGL_FORWARD_COMPAT, GL_TRUE)

    if not OpenWindow(1400, 800, 0, 0, 0, 0, 32, 0, WINDOW):
        print "OpenWindow failed"
        Terminate()
        sys.exit(-1)

    SetKeyCallback(key_callback)

    SetWindowTitle("Modern opengl example")
    Enable(AUTO_POLL_EVENTS)

    print 'Vendor: %s' % (glGetString(GL_VENDOR))
    print 'Opengl version: %s' % (glGetString(GL_VERSION))
    print 'GLSL Version: %s' % (glGetString(GL_SHADING_LANGUAGE_VERSION))
    print 'Renderer: %s' % (glGetString(GL_RENDERER))

    glClearColor(0.95, 1.0, 0.95, 0)

    program = ShaderProgram(fragment=fragment, vertex=vertex)

    vao_id = glGenVertexArrays(1)
    glBindVertexArray(vao_id)

    vbo_id = glGenBuffers(2)

    glBindBuffer(GL_ARRAY_BUFFER, vbo_id[0])
    glBufferData(GL_ARRAY_BUFFER, ArrayDatatype.arrayByteCount(vertex_data), vertex_data, GL_STATIC_DRAW)
    glVertexAttribPointer(program.attribute_location('vin_position'), 3, GL_FLOAT, GL_FALSE, 0, ctypes.c_voidp(0))
    glEnableVertexAttribArray(0)

    glBindBuffer(GL_ARRAY_BUFFER, vbo_id[1])
    glBufferData(GL_ARRAY_BUFFER, ArrayDatatype.arrayByteCount(color_data), color_data, GL_STATIC_DRAW)
    glVertexAttribPointer(program.attribute_location('vin_color'), 3, GL_FLOAT, GL_FALSE, 0, ctypes.c_voidp(0))
    glEnableVertexAttribArray(1)

    glBindBuffer(GL_ARRAY_BUFFER, 0)
    glBindVertexArray(0)

    running = True

    while running:
        glClear(GL_COLOR_BUFFER_BIT)

        glUseProgram(program.program_id)
        glBindVertexArray(vao_id)
        glDrawArrays(GL_TRIANGLES, 0, 3)
        glUseProgram(0)
        glBindVertexArray(0)
        SwapBuffers()
        running = running and GetWindowParam(OPENED)
