# Package

version       = "0.1.0"
author        = "Avahe Kellenberger"
description   = "A new awesome nimble package"
license       = "GPL-2.0-only"
srcDir        = "src"


# Dependencies

requires "nim >= 1.6.12"
requires "glfw >= 3.3.4.0"
requires "glm >= 1.1.0"
# TODO: How to keep this up to date?
requires "https://github.com/DanielBelmes/vulkan"

task runr, "Runs the current build/example":
  exec "nim -d:debug r src/shade3d.nim"

