#version 450 core

out vec4 fColor;
layout(location = 0) in vec3 vOutColor;

void main()
{
    fColor = vec4(vOutColor, 1.0);
}
