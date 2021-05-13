# CMake generated Testfile for 
# Source directory: /home/helgi/projects/older2020/bmstu/tp/labs/lab05_demo2/banking
# Build directory: /home/helgi/projects/older2020/bmstu/tp/labs/lab05_demo2/banking/_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(check "/home/helgi/projects/older2020/bmstu/tp/labs/lab05_demo2/banking/_build/check")
set_tests_properties(check PROPERTIES  _BACKTRACE_TRIPLES "/home/helgi/projects/older2020/bmstu/tp/labs/lab05_demo2/banking/CMakeLists.txt;28;add_test;/home/helgi/projects/older2020/bmstu/tp/labs/lab05_demo2/banking/CMakeLists.txt;0;")
subdirs("third-party/gtest")
