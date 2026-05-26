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

## Getting Started

### Prerequisites
You can build the project using the provided Visual Studio solution or Makefiles. 
- **Windows**: Open `pbrt-renderer.sln` using Visual Studio.
- **Linux / macOS**: Build using the standard C/C++ compiler toolchain (via `make`).

### Running the Renderer
To run the application, pass the path to an XML scene file as a command-line argument. For example, to render the provided example scene:

user.exe scenes/ball.xml
Output: Upon successful execution, the resulting rendered image will be saved as output.bmp in the root directory of the executable.

Scene Configuration
You can configure your own scenes by creating XML files in the scenes/ directory. You have granular control over materials, camera positioning, and lighting.

Example Light Configurations:

<light type="point" ... /> - For hard shadows.
<light type="area" ... /> - For soft shadows.
<light type="sky" ... /> - For ambient occlusion.

License
This project under the Creative Commons Attribution 4.0 International (CC BY 4.0) license.
