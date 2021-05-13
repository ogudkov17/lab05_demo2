cmake_minimum_required(VERSION 3.4)
project(lab05)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


option(BUILD_TESTS "Build tests" OFF)

#add_subdirectory(formatter_lib)
#add_subdirectory(formatter_ex_lib)
#add_subdirectory(solver_application)
#add_subdirectory(hello_world_application)
add_library(Account STATIC ${CMAKE_CURRENT_SOURCE_DIR}/Account.cpp)
add_library(Transaction STATIC ${CMAKE_CURRENT_SOURCE_DIR}/Transaction.cpp)
target_link_libraries(Transaction Account)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

if (BUILD_TESTS)
		enable_testing()
		add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/third-party/gtest)
		#add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/third-party/googlemock)
		include_directories(${CMAKE_CURRENT_SOURCE_DIR}/third-party/gtest/googlemock/include)
		file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
		add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
		target_link_libraries(check Account Transaction gtest_main)
		add_test(NAME check COMMAND check)
endif()

