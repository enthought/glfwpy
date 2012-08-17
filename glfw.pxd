cdef extern from "GL/glfw.h":
    enum version:
        GLFW_VERSION_MAJOR
        GLFW_VERSION_MINOR
        GLFW_VERSION_REVISION

    enum button_state:
        GLFW_RELEASE
        GLFW_PRESS

    enum keys:
        GLFW_KEY_UNKNOWN     
        GLFW_KEY_SPACE       
        GLFW_KEY_SPECIAL     
        GLFW_KEY_ESC         
        GLFW_KEY_F1          
        GLFW_KEY_F2          
        GLFW_KEY_F3          
        GLFW_KEY_F4          
        GLFW_KEY_F5          
        GLFW_KEY_F6          
        GLFW_KEY_F7          
        GLFW_KEY_F8          
        GLFW_KEY_F9          
        GLFW_KEY_F10         
        GLFW_KEY_F11         
        GLFW_KEY_F12         
        GLFW_KEY_F13         
        GLFW_KEY_F14         
        GLFW_KEY_F15         
        GLFW_KEY_F16         
        GLFW_KEY_F17         
        GLFW_KEY_F18         
        GLFW_KEY_F19         
        GLFW_KEY_F20         
        GLFW_KEY_F21         
        GLFW_KEY_F22         
        GLFW_KEY_F23         
        GLFW_KEY_F24         
        GLFW_KEY_F25         
        GLFW_KEY_UP          
        GLFW_KEY_DOWN        
        GLFW_KEY_LEFT        
        GLFW_KEY_RIGHT       
        GLFW_KEY_LSHIFT      
        GLFW_KEY_RSHIFT      
        GLFW_KEY_LCTRL       
        GLFW_KEY_RCTRL       
        GLFW_KEY_LALT        
        GLFW_KEY_RALT        
        GLFW_KEY_TAB         
        GLFW_KEY_ENTER       
        GLFW_KEY_BACKSPACE   
        GLFW_KEY_INSERT      
        GLFW_KEY_DEL         
        GLFW_KEY_PAGEUP      
        GLFW_KEY_PAGEDOWN    
        GLFW_KEY_HOME        
        GLFW_KEY_END         
        GLFW_KEY_KP_0        
        GLFW_KEY_KP_1        
        GLFW_KEY_KP_2        
        GLFW_KEY_KP_3        
        GLFW_KEY_KP_4        
        GLFW_KEY_KP_5        
        GLFW_KEY_KP_6        
        GLFW_KEY_KP_7        
        GLFW_KEY_KP_8        
        GLFW_KEY_KP_9        
        GLFW_KEY_KP_DIVIDE   
        GLFW_KEY_KP_MULTIPLY 
        GLFW_KEY_KP_SUBTRACT 
        GLFW_KEY_KP_ADD      
        GLFW_KEY_KP_DECIMAL  
        GLFW_KEY_KP_EQUAL    
        GLFW_KEY_KP_ENTER    
        GLFW_KEY_KP_NUM_LOCK 
        GLFW_KEY_CAPS_LOCK   
        GLFW_KEY_SCROLL_LOCK 
        GLFW_KEY_PAUSE       
        GLFW_KEY_LSUPER      
        GLFW_KEY_RSUPER      
        GLFW_KEY_MENU        
        GLFW_KEY_LAST        

    enum mouse_buttons:
        GLFW_MOUSE_BUTTON_1
        GLFW_MOUSE_BUTTON_2
        GLFW_MOUSE_BUTTON_3
        GLFW_MOUSE_BUTTON_4
        GLFW_MOUSE_BUTTON_5
        GLFW_MOUSE_BUTTON_6
        GLFW_MOUSE_BUTTON_7
        GLFW_MOUSE_BUTTON_LAST
        GLFW_MOUSE_BUTTON_LEFT
        GLFW_MOUSE_BUTTON_RIGHT
        GLFW_MOUSE_BUTTON_MIDDLE

    enum joystick_identifiers:
        GLFW_JOYSTICK_1
        GLFW_JOYSTICK_2
        GLFW_JOYSTICK_3
        GLFW_JOYSTICK_4
        GLFW_JOYSTICK_5
        GLFW_JOYSTICK_6
        GLFW_JOYSTICK_7
        GLFW_JOYSTICK_8
        GLFW_JOYSTICK_9
        GLFW_JOYSTICK_10
        GLFW_JOYSTICK_11
        GLFW_JOYSTICK_12
        GLFW_JOYSTICK_13
        GLFW_JOYSTICK_14
        GLFW_JOYSTICK_15
        GLFW_JOYSTICK_16
        GLFW_JOYSTICK_LAST

    enum openwindow_modes:
        GLFW_WINDOW
        GLFW_FULLSCREEN

    enum get_window_param_tokens:
        GLFW_OPENED
        GLFW_ACTIVE
        GLFW_ICONIFIED
        GLFW_ACCELERATED
        GLFW_RED_BITS
        GLFW_GREEN_BITS
        GLFW_BLUE_BITS
        GLFW_ALPHA_BITS
        GLFW_DEPTH_BITS
        GLFW_STENCIL_BITS

    enum window_ants:
        GLFW_REFRESH_RATE
        GLFW_ACCUM_RED_BITS
        GLFW_ACCUM_GREEN_BITS
        GLFW_ACCUM_BLUE_BITS
        GLFW_ACCUM_ALPHA_BITS
        GLFW_AUX_BUFFERS
        GLFW_STEREO
        GLFW_WINDOW_NO_RESIZE
        GLFW_FSAA_SAMPLES
        GLFW_OPENGL_VERSION_MAJOR
        GLFW_OPENGL_VERSION_MINOR
        GLFW_OPENGL_FORWARD_COMPAT
        GLFW_OPENGL_DEBUG_CONTEXT
        GLFW_OPENGL_PROFILE

    enum opengl_profiles:
        GLFW_OPENGL_CORE_PROFILE
        GLFW_OPENGL_COMPAT_PROFILE

    enum enable_disable_tokens:
        GLFW_MOUSE_CURSOR
        GLFW_STICKY_KEYS
        GLFW_STICKY_MOUSE_BUTTONS
        GLFW_SYSTEM_KEYS
        GLFW_KEY_REPEAT
        GLFW_AUTO_POLL_EVENTS

    enum wait_modes:
        GLFW_WAIT
        GLFW_NOWAIT

    enum joystick_params:
        GLFW_PRESENT
        GLFW_AXES
        GLFW_BUTTONS

    enum image_texture_flags:
        GLFW_NO_RESCALE_BIT
        GLFW_ORIGIN_UL_BIT
        GLFW_BUILD_MIPMAPS_BIT
        GLFW_ALPHA_MAP_BIT

    # and all by itself ..... infinity
    enum infinity:
        GLFW_INFINITY

    # structs
    ctypedef struct GLFWvidmode:
        int Width
        int Height
        int RedBits
        int BlueBits
        int GreenBits

    ctypedef struct GLFWimage:
        int Width
        int Height
        int Format
        int BytesPerPixel
        unsigned char *Data

    # typedefs
    ctypedef int GLFWthread
    ctypedef void *GLFWmutex
    ctypedef void *GLFWcond

    ctypedef void (*GLFWwindowsizefun)(int,int)
    ctypedef int  (*GLFWwindowclosefun)()
    ctypedef void (*GLFWwindowrefreshfun)()
    ctypedef void (*GLFWmousebuttonfun)(int,int)
    ctypedef void (*GLFWmouseposfun)(int,int)
    ctypedef void (*GLFWmousewheelfun)(int)
    ctypedef void (*GLFWkeyfun)(int,int)
    ctypedef void (*GLFWcharfun)(int,int)
    ctypedef void (*GLFWthreadfun)(void *)

    # GLFW initialization, termination and version querying 
    int  glfwInit()
    void glfwTerminate()
    void glfwGetVersion( int *major, int *minor, int *rev )

    #/* Window handling */
    int  glfwOpenWindow( int width, int height, int redbits, int greenbits, int bluebits, int alphabits, int depthbits, int stencilbits, int mode )
    void glfwOpenWindowHint( int target, int hint )
    void glfwCloseWindow()
    void glfwSetWindowTitle(  char *title )
    void glfwGetWindowSize( int *width, int *height )
    void glfwSetWindowSize( int width, int height )
    void glfwSetWindowPos( int x, int y )
    void glfwIconifyWindow()
    void glfwRestoreWindow()
    void glfwSwapBuffers()
    void glfwSwapInterval( int interval )
    int  glfwGetWindowParam( int param )
    void glfwSetWindowSizeCallback( GLFWwindowsizefun cbfun )
    void glfwSetWindowCloseCallback( GLFWwindowclosefun cbfun )
    void glfwSetWindowRefreshCallback( GLFWwindowrefreshfun cbfun )

    #/* Video mode functions */
    int  glfwGetVideoModes( GLFWvidmode *list, int maxcount )
    void glfwGetDesktopMode( GLFWvidmode *mode )

    #/* Input handling */
    void glfwPollEvents()
    void glfwWaitEvents()
    int  glfwGetKey( int key )
    int  glfwGetMouseButton( int button )
    void glfwGetMousePos( int *xpos, int *ypos )
    void glfwSetMousePos( int xpos, int ypos )
    int  glfwGetMouseWheel()
    void glfwSetMouseWheel( int pos )
    void glfwSetKeyCallback( GLFWkeyfun cbfun )
    void glfwSetCharCallback( GLFWcharfun cbfun )
    void glfwSetMouseButtonCallback( GLFWmousebuttonfun cbfun )
    void glfwSetMousePosCallback( GLFWmouseposfun cbfun )
    void glfwSetMouseWheelCallback( GLFWmousewheelfun cbfun )

    #/* Joystick input */
    int glfwGetJoystickParam( int joy, int param )
    int glfwGetJoystickPos( int joy, float *pos, int numaxes )
    int glfwGetJoystickButtons( int joy, unsigned char *buttons, int numbuttons )

    #/* Time */
    double glfwGetTime()
    void   glfwSetTime( double time )
    void   glfwSleep( double time )

    #/* Extension support */
    int   glfwExtensionSupported(  char *extension )
    void  glfwGetGLVersion( int *major, int *minor, int *rev )

    #/* Enable/disable functions */
    void glfwEnable( int token )
    void glfwDisable( int token )

    
    # NOT EXPOSED TO PYTHON
    # use case for using this from python is not
    # apparent currently
    void* glfwGetProcAddress(  char *procname )

    #/* Threading support */
    # Use Python threads instead
    GLFWthread glfwCreateThread( GLFWthreadfun fun, void *arg )
    void glfwDestroyThread( GLFWthread ID )
    int  glfwWaitThread( GLFWthread ID, int waitmode )
    GLFWthread glfwGetThreadID()
    GLFWmutex glfwCreateMutex()
    void glfwDestroyMutex( GLFWmutex mutex )
    void glfwLockMutex( GLFWmutex mutex )
    void glfwUnlockMutex( GLFWmutex mutex )
    GLFWcond glfwCreateCond()
    void glfwDestroyCond( GLFWcond cond )
    void glfwWaitCond( GLFWcond cond, GLFWmutex mutex, double timeout )
    void glfwSignalCond( GLFWcond cond )
    void glfwBroadcastCond( GLFWcond cond )
    int  glfwGetNumberOfProcessors()

    #/* Image/texture I/O support */
    # Use a pythonic imaging library instead
    int  glfwReadImage(  char *name, GLFWimage *img, int flags )
    int  glfwReadMemoryImage(  void *data, long size, GLFWimage *img, int flags )
    void glfwFreeImage( GLFWimage *img )
    int  glfwLoadTexture2D(  char *name, int flags )
    int  glfwLoadMemoryTexture2D(  void *data, long size, int flags )
    int  glfwLoadTextureImage2D( GLFWimage *img, int flags )
