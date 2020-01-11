
#version 400 core
#extension GL_ARB_separate_shader_objects : enable

layout( location = 0 ) in vec4 vPosition;
layout(location = 1) in vec3 vInColor;

layout(location = 0) out vec3 vOutColor;

void main()
{
    gl_Position = vPosition;
    vOutColor = vInColor;
}
