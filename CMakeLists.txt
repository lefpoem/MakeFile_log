#CMake 最低版本号要求
cmake_minimum_required(VERSION 3.16.3)
#项目信息
project(Demo)
#指定生成目标
add_executable(Demo main.cc) #将名为 main.cc 的源文件编译成一个名称为 Demo 的可执行文件
