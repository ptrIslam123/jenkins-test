# Устанавливаем минимальную версию cmake`а
cmake_minimum_required(VERSION 3.0.0)
# Устанавливаем фалг для генерации compil_command.json файла
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Указываем имя проекта
project("cmakeTestDBJSON")

# Выставление флагов компиляций
add_definitions(-Wall -O2)

# Подключение под директорий по указанному пути
add_subdirectory(subProject)
add_subdirectory(libsrc)

# Создал список с исходниками текущей директорий
set(SRC foo/foo.cpp bar/bar.cpp)

# Создаем исполняемый файл, передаем ему список из source файлы из которых будет создан исполняемый
add_executable(${PROJECT_NAME} 
    main.cpp
    ${SRC}
)

# Установка используемого стандата CXX. В данном примере 14
set_target_properties(${PROJECT_NAME} PROPERTIES
    CXX_STANDARD 14
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
)

# Добавляем пути по которым компилятор для указанного первым аргументов исполняемого файла будет искать header файлы 
target_include_directories(${PROJECT_NAME} PRIVATE ./foo/)
target_include_directories(${PROJECT_NAME} PRIVATE ./bar/)
target_include_directories(${PROJECT_NAME} PUBLIC ./libsrc/)
target_include_directories(${PROJECT_NAME} PUBLIC ./subProject/)


# Линковка с библиотеками (Имя исполняемого файла с которым линкуем (таргет)) (Имя библиотеки с которой линкуемся)
target_link_libraries(${PROJECT_NAME} libsrc)
target_link_libraries(${PROJECT_NAME} subProject)
