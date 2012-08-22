from glfw cimport *
from cython import address
from libc.stdlib cimport malloc, free

_callback_key = None
_callback_char = None
_callback_mouse_button = None
_callback_mouse_pos = None
_callback_mouse_wheel = None
_callback_window_size = None
_callback_window_close = None
_callback_window_refresh = None


cdef void c_callback_key(int character, int action) with gil:
    _callback_key(character, action)

cdef void c_callback_char(int character, int action) with gil:
    _callback_char(character, action)

cdef void c_callback_mouse_button(int character, int action) with gil:
    _callback_mouse_button(character, action)

cdef void c_callback_mouse_pos(int x, int y) with gil:
    _callback_mouse_pos(x, y)

cdef void c_callback_mouse_wheel(int pos) with gil:
    _callback_mouse_wheel(pos)

cdef void c_callback_window_size(int width, int height) with gil:
    _callback_window_size(width, height)

cdef int c_callback_window_close() with gil:
    return _callback_window_close()

cdef void c_callback_window_refresh() with gil:
    _callback_window_refresh()

#    enum version:
VERSION_MAJOR = GLFW_VERSION_MAJOR
VERSION_MINOR = GLFW_VERSION_MINOR
VERSION_REVISION = GLFW_VERSION_REVISION

#    enum button_state:
RELEASE = GLFW_RELEASE
PRESS = GLFW_PRESS

#    enum keys:
KEY_UNKNOWN      = GLFW_KEY_UNKNOWN     
KEY_SPACE        = GLFW_KEY_SPACE       
KEY_SPECIAL      = GLFW_KEY_SPECIAL     
KEY_ESC          = GLFW_KEY_ESC         
KEY_F1           = GLFW_KEY_F1          
KEY_F2           = GLFW_KEY_F2          
KEY_F3           = GLFW_KEY_F3          
KEY_F4           = GLFW_KEY_F4          
KEY_F5           = GLFW_KEY_F5          
KEY_F6           = GLFW_KEY_F6          
KEY_F7           = GLFW_KEY_F7          
KEY_F8           = GLFW_KEY_F8          
KEY_F9           = GLFW_KEY_F9          
KEY_F10          = GLFW_KEY_F10         
KEY_F11          = GLFW_KEY_F11         
KEY_F12          = GLFW_KEY_F12         
KEY_F13          = GLFW_KEY_F13         
KEY_F14          = GLFW_KEY_F14         
KEY_F15          = GLFW_KEY_F15         
KEY_F16          = GLFW_KEY_F16         
KEY_F17          = GLFW_KEY_F17         
KEY_F18          = GLFW_KEY_F18         
KEY_F19          = GLFW_KEY_F19         
KEY_F20          = GLFW_KEY_F20         
KEY_F21          = GLFW_KEY_F21         
KEY_F22          = GLFW_KEY_F22         
KEY_F23          = GLFW_KEY_F23         
KEY_F24          = GLFW_KEY_F24         
KEY_F25          = GLFW_KEY_F25         
KEY_UP           = GLFW_KEY_UP          
KEY_DOWN         = GLFW_KEY_DOWN        
KEY_LEFT         = GLFW_KEY_LEFT        
KEY_RIGHT        = GLFW_KEY_RIGHT       
KEY_LSHIFT       = GLFW_KEY_LSHIFT      
KEY_RSHIFT       = GLFW_KEY_RSHIFT      
KEY_LCTRL        = GLFW_KEY_LCTRL       
KEY_RCTRL        = GLFW_KEY_RCTRL       
KEY_LALT         = GLFW_KEY_LALT        
KEY_RALT         = GLFW_KEY_RALT        
KEY_TAB          = GLFW_KEY_TAB         
KEY_ENTER        = GLFW_KEY_ENTER       
KEY_BACKSPACE    = GLFW_KEY_BACKSPACE   
KEY_INSERT       = GLFW_KEY_INSERT      
KEY_DEL          = GLFW_KEY_DEL         
KEY_PAGEUP       = GLFW_KEY_PAGEUP      
KEY_PAGEDOWN     = GLFW_KEY_PAGEDOWN    
KEY_HOME         = GLFW_KEY_HOME        
KEY_END          = GLFW_KEY_END         
KEY_KP_0         = GLFW_KEY_KP_0        
KEY_KP_1         = GLFW_KEY_KP_1        
KEY_KP_2         = GLFW_KEY_KP_2        
KEY_KP_3         = GLFW_KEY_KP_3        
KEY_KP_4         = GLFW_KEY_KP_4        
KEY_KP_5         = GLFW_KEY_KP_5        
KEY_KP_6         = GLFW_KEY_KP_6        
KEY_KP_7         = GLFW_KEY_KP_7        
KEY_KP_8         = GLFW_KEY_KP_8        
KEY_KP_9         = GLFW_KEY_KP_9        
KEY_KP_DIVIDE    = GLFW_KEY_KP_DIVIDE   
KEY_KP_MULTIPLY  = GLFW_KEY_KP_MULTIPLY 
KEY_KP_SUBTRACT  = GLFW_KEY_KP_SUBTRACT 
KEY_KP_ADD       = GLFW_KEY_KP_ADD      
KEY_KP_DECIMAL   = GLFW_KEY_KP_DECIMAL  
KEY_KP_EQUAL     = GLFW_KEY_KP_EQUAL    
KEY_KP_ENTER     = GLFW_KEY_KP_ENTER    
KEY_KP_NUM_LOCK  = GLFW_KEY_KP_NUM_LOCK 
KEY_CAPS_LOCK    = GLFW_KEY_CAPS_LOCK   
KEY_SCROLL_LOCK  = GLFW_KEY_SCROLL_LOCK 
KEY_PAUSE        = GLFW_KEY_PAUSE       
KEY_LSUPER       = GLFW_KEY_LSUPER      
KEY_RSUPER       = GLFW_KEY_RSUPER      
KEY_MENU         = GLFW_KEY_MENU        
KEY_LAST         = GLFW_KEY_LAST        

#    enum mouse_buttons:
MOUSE_BUTTON_1 = GLFW_MOUSE_BUTTON_1
MOUSE_BUTTON_2 = GLFW_MOUSE_BUTTON_2
MOUSE_BUTTON_3 = GLFW_MOUSE_BUTTON_3
MOUSE_BUTTON_4 = GLFW_MOUSE_BUTTON_4
MOUSE_BUTTON_5 = GLFW_MOUSE_BUTTON_5
MOUSE_BUTTON_6 = GLFW_MOUSE_BUTTON_6
MOUSE_BUTTON_7 = GLFW_MOUSE_BUTTON_7
MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_LAST
MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_LEFT
MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_RIGHT
MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_MIDDLE

#    enum joystick_identifiers:
JOYSTICK_1 = GLFW_JOYSTICK_1
JOYSTICK_2 = GLFW_JOYSTICK_2
JOYSTICK_3 = GLFW_JOYSTICK_3
JOYSTICK_4 = GLFW_JOYSTICK_4
JOYSTICK_5 = GLFW_JOYSTICK_5
JOYSTICK_6 = GLFW_JOYSTICK_6
JOYSTICK_7 = GLFW_JOYSTICK_7
JOYSTICK_8 = GLFW_JOYSTICK_8
JOYSTICK_9 = GLFW_JOYSTICK_9
JOYSTICK_10 = GLFW_JOYSTICK_10
JOYSTICK_11 = GLFW_JOYSTICK_11
JOYSTICK_12 = GLFW_JOYSTICK_12
JOYSTICK_13 = GLFW_JOYSTICK_13
JOYSTICK_14 = GLFW_JOYSTICK_14
JOYSTICK_15 = GLFW_JOYSTICK_15
JOYSTICK_16 = GLFW_JOYSTICK_16
JOYSTICK_LAST = GLFW_JOYSTICK_LAST

#    enum openwindow_modes:
WINDOW = GLFW_WINDOW
FULLSCREEN = GLFW_FULLSCREEN

#    enum get_window_param_tokens:
OPENED = GLFW_OPENED
ACTIVE = GLFW_ACTIVE
ICONIFIED = GLFW_ICONIFIED
ACCELERATED = GLFW_ACCELERATED
RED_BITS = GLFW_RED_BITS
GREEN_BITS = GLFW_GREEN_BITS
BLUE_BITS = GLFW_BLUE_BITS
ALPHA_BITS = GLFW_ALPHA_BITS
DEPTH_BITS = GLFW_DEPTH_BITS
STENCIL_BITS = GLFW_STENCIL_BITS

#    enum window_constants:
REFRESH_RATE = GLFW_REFRESH_RATE
ACCUM_RED_BITS = GLFW_ACCUM_RED_BITS
ACCUM_GREEN_BITS = GLFW_ACCUM_GREEN_BITS
ACCUM_BLUE_BITS = GLFW_ACCUM_BLUE_BITS
ACCUM_ALPHA_BITS = GLFW_ACCUM_ALPHA_BITS
AUX_BUFFERS = GLFW_AUX_BUFFERS
STEREO = GLFW_STEREO
WINDOW_NO_RESIZE = GLFW_WINDOW_NO_RESIZE
FSAA_SAMPLES = GLFW_FSAA_SAMPLES
OPENGL_VERSION_MAJOR = GLFW_OPENGL_VERSION_MAJOR
OPENGL_VERSION_MINOR = GLFW_OPENGL_VERSION_MINOR
OPENGL_FORWARD_COMPAT = GLFW_OPENGL_FORWARD_COMPAT
OPENGL_DEBUG_CONTEXT = GLFW_OPENGL_DEBUG_CONTEXT
OPENGL_PROFILE = GLFW_OPENGL_PROFILE

#    enum opengl_profiles:
OPENGL_CORE_PROFILE = GLFW_OPENGL_CORE_PROFILE
OPENGL_COMPAT_PROFILE = GLFW_OPENGL_COMPAT_PROFILE

#    enum enable_disable_tokens:
MOUSE_CURSOR = GLFW_MOUSE_CURSOR
STICKY_KEYS = GLFW_STICKY_KEYS
STICKY_MOUSE_BUTTONS = GLFW_STICKY_MOUSE_BUTTONS
SYSTEM_KEYS = GLFW_SYSTEM_KEYS
KEY_REPEAT = GLFW_KEY_REPEAT
AUTO_POLL_EVENTS = GLFW_AUTO_POLL_EVENTS

#    enum wait_modes:
WAIT = GLFW_WAIT
NOWAIT = GLFW_NOWAIT

#    enum joystick_params:
PRESENT = GLFW_PRESENT
AXES = GLFW_AXES
BUTTONS = GLFW_BUTTONS

#    enum image_texture_flags:
NO_RESCALE_BIT = GLFW_NO_RESCALE_BIT
ORIGIN_UL_BIT = GLFW_ORIGIN_UL_BIT
BUILD_MIPMAPS_BIT = GLFW_BUILD_MIPMAPS_BIT
ALPHA_MAP_BIT = GLFW_ALPHA_MAP_BIT

# and all by itself ..... infinity
#    enum infinity:
INFINITY = GLFW_INFINITY


# Initialization, termination and version querying
def Init():
    return glfwInit()

def Terminate():
    glfwTerminate()

def GetVersion():
    cdef int major, minor, rev
    glfwGetVersion(address(major), address(minor), address(rev))
    return {'major' : major, 'minor' : minor, 'revision' : rev}

# Window handling
def OpenWindow(int width, int height, int redbits, int greenbits,
    int bluebits, int alphabits, int depthbits, int stencilbits,
    int mode):
    return glfwOpenWindow(width, height, redbits, greenbits,
    bluebits, alphabits, depthbits, stencilbits, mode)

def OpenWindowHint(int target, int hint):
    glfwOpenWindowHint(target, hint)

def CloseWindow():
    glfwCloseWindow()

def SetWindowTitle(title):
    glfwSetWindowTitle(title)

def GetWindowSize():
    cdef int width, height
    glfwGetWindowSize(address(width), address(height))
    return (width, height)

def SetWindowSize(int width, int height):
    glfwSetWindowSize(width, height)

def SetWindowPos(int x, int y):
    glfwSetWindowPos(x, y)

def IconifyWindow():
    glfwIconifyWindow()

def RestoreWindow():
    glfwRestoreWindow()

def SwapBuffers():
    glfwSwapBuffers()

def SwapInterval(int interval):
    glfwSwapInterval(interval)

def GetWindowParam(int param):
    return glfwGetWindowParam(param)

def SetWindowSizeCallback(fn):
    global _callback_window_size
    _callback_window_size = fn
    if fn is None:
        glfwSetWindowSizeCallback(NULL)
    else:
        glfwSetWindowSizeCallback(c_callback_window_size)

def SetWindowCloseCallback(fn):
    global _callback_window_close
    _callback_window_close = fn
    if fn is None:
        glfwSetWindowCloseCallback(NULL)
    else:
        glfwSetWindowCloseCallback(c_callback_window_close)

def SetWindowRefreshCallback(fn):
    global _callback_window_refresh
    _callback_window_refresh = fn
    if fn is None:
        glfwSetWindowRefreshCallback(NULL)
    else:
        glfwSetWindowRefreshCallback(c_callback_window_refresh)

class VidMode(object):
    def __init__(   self, int width, int height, int redbits,
                    int greenbits, int bluebits):
        self.Width = width
        self.Height = height
        self.RedBits = redbits
        self.BlueBits = bluebits
        self.GreenBits = greenbits

    def __repr__(self):
        return '<VidMode: width: %s height: %s redbits: %s greenbits: %s bluebits: %s>' % (
        self.Width, self.Height, self.RedBits, self.GreenBits, self.BlueBits)

# Video mode functions
def GetVideoModes(int maxcount):
    cdef GLFWvidmode *modelist = <GLFWvidmode *>malloc(maxcount * sizeof(GLFWvidmode))
    try:
        num_modes = glfwGetVideoModes(modelist, maxcount)
        bag = []
        for i in xrange(num_modes):
            c_mode = modelist[i]
            mode = VidMode( c_mode.Width, c_mode.Height, c_mode.RedBits,
                            c_mode.GreenBits, c_mode.BlueBits)
            bag.append(mode)
    finally:
        free(modelist)
    return bag

def GetDesktopMode():
    cdef GLFWvidmode c_mode
    glfwGetDesktopMode(address(c_mode))
    return VidMode( c_mode.Width, c_mode.Height, c_mode.RedBits,
                    c_mode.GreenBits, c_mode.BlueBits)


# Input handling
def PollEvents():
    glfwPollEvents()

def WaitEvents():
    glfwWaitEvents()

def GetKey(int key):
    return glfwGetKey(key)

def GetMouseButton(int button):
    return glfwGetMouseButton(button)

def GetMousePos():
    cdef int xpos, ypos
    glfwGetMousePos(address(xpos), address(ypos))
    return (xpos, ypos)

def SetMousePos(int xpos, int ypos):
    glfwSetMousePos(xpos, ypos)

def GetMouseWheel():
    return glfwGetMouseWheel()

def SetMouseWheel(int pos):
    glfwSetMouseWheel(pos)

def SetKeyCallback(fn):
    global _callback_key
    _callback_key = fn
    if fn is None:
        glfwSetKeyCallback(NULL)
    else:
        glfwSetKeyCallback(c_callback_key)

def SetCharCallback(fn):
    global _callback_char
    _callback_char = fn
    if fn is None:
        glfwSetCharCallback(NULL)
    else:
        glfwSetCharCallback(c_callback_char)

def SetMouseButtonCallback(fn):
    global _callback_mouse_button
    _callback_mouse_button = fn
    if fn is None:
        glfwSetMouseButtonCallback(NULL)
    else:
        glfwSetMouseButtonCallback(c_callback_mouse_button)

def SetMousePosCallback(fn):
    global _callback_mouse_pos
    _callback_mouse_pos = fn
    if fn is None:
        glfwSetMousePosCallback(NULL)
    else:
        glfwSetMousePosCallback(c_callback_mouse_pos)

def SetMouseWheelCallback(fn):
    global _callback_mouse_wheel
    _callback_mouse_wheel = fn
    if fn is None:
        glfwSetMouseWheelCallback(NULL)
    else:
        glfwSetMouseWheelCallback(c_callback_mouse_wheel)

# Joystick input
def GetJoystickParam(int joy, int param):
    return glfwGetJoystickParam(joy, param)

def GetJoystickPos(int joy, int numaxes):
    cdef float* pos = <float *> malloc(sizeof(float) * numaxes)
    try:
        rval = glfwGetJoystickPos(joy, pos, numaxes)
        if rval == 0:
            raise RuntimeError("Joystick not found or not supported.")
        bag = []
        for i in xrange(rval):
            position = pos[i]
            bag.append(position)
        return bag
    finally:
        free(pos)

def GetJoystickButtons(int joy, int numbuttons):
    cdef unsigned char *buttons = <unsigned char*> malloc(sizeof(unsigned char*) * numbuttons)
    try:
        rval = glfwGetJoystickButtons(joy, buttons, numbuttons)
        if rval == 0:
            raise RuntimeError("Joystick not found or not supported.")
        bag = []
        for i in xrange(rval):
            button = buttons[i]
            bag.append(button)
        return bag
    finally:
        free(buttons)


# Extension support
def ExtensionSupported(extension):
    return glfwExtensionSupported(extension)

def GetVersion():
    cdef int major, minor, rev
    glfwGetGLVersion(address(major), address(minor), address(rev))
    return {'major' : major, 'minor' : minor, 'revision' : rev}


# Time
def GetTime():
    return glfwGetTime()

def SetTime(double time):
    glfwSetTime(time)

def Sleep(double time):
    glfwSleep(time)

# Enable/disable functions
def Enable(int token):
    glfwEnable(token)

def Disable(int token):
    glfwDisable(token)
