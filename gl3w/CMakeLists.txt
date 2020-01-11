add_library(gl3w
    STATIC
    ${GL3W_INCLUDE_DIR}/GL/gl3w.h
    gl3w.c
)

set_target_properties(gl3w PROPERTIES LINKER_LANGUAGE C)