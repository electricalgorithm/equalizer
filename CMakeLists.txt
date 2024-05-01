cmake_minimum_required(VERSION 3.15)
project(equalizer CXX)

find_package(KFR CONFIG REQUIRED)

file(GLOB_RECURSE SOURCES "sources/*.cpp")
file(GLOB_RECURSE HEADERS "sources/*.h")
add_executable(${CMAKE_PROJECT_NAME} ${SOURCES} ${HEADERS})

target_compile_features(${CMAKE_PROJECT_NAME} PRIVATE cxx_std_17)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE kfr kfr_dsp kfr_io)

install(TARGETS ${CMAKE_PROJECT_NAME}
        DESTINATION "."
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )
