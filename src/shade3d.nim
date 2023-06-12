import vulkan, glm/[mat, vec]

import shade3d/window

proc main() =
  let window = newWindow(800, 600, "Shade 3D!")

  while not window.shouldClose():
    window.pollEvents()

#   var extensionCount: uint32
#   discard vkEnumerateInstanceExtensionProperties(nil, extensionCount.addr, nil)

#   echo "Extensions supported: " & $extensionCount

#   var
#     matrix: Mat4[float]
#     vec: Vec4[float]

#   let test = matrix * vec

when isMainModule:
  main()

