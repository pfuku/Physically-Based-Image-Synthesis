# Physically-Based Image Synthesis

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

A reference implementation for realistic physically-based image synthesis, written in C and C++. This renderer supports core ray tracing features, including global illumination via ambient occlusion, soft shadows, and hard shadows.

## Features
- **Global Illumination**: Implements ambient occlusion for realistic lighting and depth.
- **Light Types**:
  - `point`: Generates sharp, hard shadows.
  - `area`: Simulates physical light sources to generate soft shadows.
  - `sky`: Provides environmental lighting and ambient occlusion.
- **XML Scene Parsing**: Define geometry, materials, and lighting using easy-to-read XML scene graphs (powered by TinyXML).
- **Output**: Renders directly to `.bmp` image format.

## Repository Structure
- `include/` / `lib/` - Core dependencies and library headers.
- `renderer/` - The main rendering engine logic and ray tracing implementation.
- `models/` / `maps/` - 3D assets and texture maps used in rendering.
- `scenes/` - XML scene graph files (e.g., `ball.xml`) defining the environment to be rendered.
- `tinyxml/` - Lightweight XML parser used to read scene configuration files.
- `user/` - User executable entry point.

## Overview

This repository is a compact, educational C/C++ reference renderer implementing physically-based image synthesis features such as scene parsing, basic material models, cameras, lights (point/area/sky), geometry loading, and a simple global illumination technique (ambient occlusion).

It is intended as a learning/reference implementation rather than a production renderer.

## Features

- Scene description via XML files (TinyXML-based parser).
- Triangle mesh loading and basic geometric primitives.
- Camera models (perspective), screen/sampler, and image output to BMP.
- Light types: point, area, and sky (ambient-like lighting).
- Basic material support with diffuse/specular/ambient and simple reflection/refraction parameters.
- Optional parallel rendering path (configurable via scene XML).

## Building

Supported on macOS and Linux with a standard C++ toolchain. A top-level `Makefile` is provided.

Prerequisites:

- A modern C++ compiler (`clang++` or `g++`).
- `make` build tool.

To build from the repository root:

```bash
make
```

Notes and troubleshooting:

- The build disables the CImg display features by default to avoid X11 dependencies on macOS. If you need display support, edit `Makefile` and remove `-Dcimg_display=0` and install X11 development headers.
- The compiled binary is named `pbrt_renderer` by default. If a target name collides with an existing folder named `user`, the Makefile has been adjusted to avoid that conflict.

## Running

Run the renderer with a scene file from the repository `scenes/` folder. Example:

```bash
./pbrt_renderer scenes/ball.xml
```

The program writes the output image file (e.g., `output.bmp`) to the executable's working directory.

## Project Structure

- `include/` - Header files for TinyXML and project-wide interfaces.
- `renderer/` - Renderer implementation: cameras, integrator, shapes, materials, lights, kdtree/octree, film, etc.
- `tinyxml/` - TinyXML sources used for XML parsing.
- `user/` - Application entry point (`main.cpp`) and any platform-specific tinyxml wrappers.
- `scenes/` - Example scene files.

## Contributing & Notes

- This codebase contains a few compatibility fixes for Unix-like systems (path separators, small type fixes). If you modify or extend it, prefer small, focused changes.
- Tests are not included; manual runs with provided scenes are the primary verification method.

## License

This project is distributed under the Creative Commons Attribution 4.0 International (CC BY 4.0) license.

