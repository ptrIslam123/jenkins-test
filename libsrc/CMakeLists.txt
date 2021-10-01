cmake_minimum_required(VERSION 3.0.0)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project("libsrc")

set(SRC libsrc.cpp)

# Создаем библиотеку (Имя библиотеки) (Тип библиотеки) (Список исходников из которых будет сделала библиотека)
add_library(${PROJECT_NAME} STATIC ${SRC})
