import glfw
import glfw/wrapper

type
  WindowObj = object
    glfwWindow: glfw.Window

    width: int
    height: int
    title: string

  Window* = ref WindowObj

proc `=destroy`*(this: var WindowObj)

proc newWindow*(width, height: int, title: string): Window =
  result = Window()
  glfw.initialize()
  wrapper.windowHint(int32 hClientApi, int32 oaNoApi)
  wrapper.windowHint(int32 hResizable, int32 false)
  result.glfwWindow = newWindow(wrapper.createWindow(int32 width, int32 height, title, nil, nil))
  result.width = width
  result.height = height
  result.title = title

proc shouldClose*(this: Window): bool =
  return this.glfwWindow.shouldClose()

proc pollEvents*(this: Window) =
  glfw.pollEvents()

proc width*(this: Window): int =
  return this.width

proc height*(this: Window): int =
  return this.height

proc title*(this: Window): string =
  return this.title

proc `title=`*(this: Window, title: string) =
  this.glfwWindow.title = title

proc `=destroy`*(this: var WindowObj) =
  if this.glfwWindow != nil:
    glfw.destroy(this.glfwWindow)

  glfw.terminate()

