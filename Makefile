CXX := clang++
CXXFLAGS := -std=c++11 -O2 -g -Iinclude -Irenderer -Itinyxml -Dcimg_display=0

SRCS := $(filter-out tinyxml/xmltest.cpp user/tinyxmlparser.cpp user/tinyxmlerror.cpp, $(wildcard renderer/*.cpp) $(wildcard tinyxml/*.cpp) $(wildcard user/*.cpp))
OBJS := $(SRCS:.cpp=.o)

TARGET := pbrt_renderer

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
