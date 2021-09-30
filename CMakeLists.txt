cmake_minimum_required(VERSION 3.11)

# Project definition.

project(UserDocumentation
    LANGUAGES NONE
)

# Retrieve the theme repository.

include(FetchContent)

set(SPHINX_THEME_DIR ${CMAKE_BINARY_DIR}/theme)

FetchContent_Declare(sphinx-theme
    GIT_REPOSITORY https://github.com/opencor/sphinx-theme
    SOURCE_DIR ${SPHINX_THEME_DIR}
)

FetchContent_Populate(sphinx-theme)

# Build the user documentation for OpenCOR.

include(${SPHINX_THEME_DIR}/cmake/common.cmake)

build_documentation(user 54 96 146)
