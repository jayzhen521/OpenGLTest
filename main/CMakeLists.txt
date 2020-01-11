target_include_directories(gl3w PRIVATE ${GL3W_INCLUDE_DIR})

add_executable(triangle ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp ${CMAKE_CURRENT_SOURCE_DIR}/src/LoadShaders.cpp)

target_include_directories(triangle PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include ${GL3W_INCLUDE_DIR} ${GLFW_INCLUDE_DIR})

target_link_libraries(triangle
    PRIVATE
    debug ${GLFW_LIBRARY_DEBUG}
    optimized ${GLFW_LIBRARY_RELEASE}
    gl3w)

if(MSVC)
    set_property(TARGET triangle PROPERTY VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}")
endif()