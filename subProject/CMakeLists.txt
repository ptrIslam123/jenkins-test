# Устанавливаем минимальную версию cmake`а
cmake_minimum_required(VERSION 3.0.0)
# Устанавливаем фалг для генерации compil_command.json файла
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Указываем имя проекта
project("subProject")

set(SRC sub_foo.cpp)

add_library(${PROJECT_NAME} STATIC ${SRC})