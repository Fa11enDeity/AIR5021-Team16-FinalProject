# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dingdong: 4 messages, 0 services")

set(MSG_I_FLAGS "-Idingdong:/home/spark/spark_noetic/src/dingdong/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dingdong_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" NAME_WE)
add_custom_target(_dingdong_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dingdong" "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" ""
)

get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/position.msg" NAME_WE)
add_custom_target(_dingdong_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dingdong" "/home/spark/spark_noetic/src/dingdong/msg/position.msg" ""
)

get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" NAME_WE)
add_custom_target(_dingdong_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dingdong" "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" ""
)

get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/status.msg" NAME_WE)
add_custom_target(_dingdong_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dingdong" "/home/spark/spark_noetic/src/dingdong/msg/status.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong
)
_generate_msg_cpp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong
)
_generate_msg_cpp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong
)
_generate_msg_cpp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong
)

### Generating Services

### Generating Module File
_generate_module_cpp(dingdong
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dingdong_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dingdong_generate_messages dingdong_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_cpp _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/position.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_cpp _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_cpp _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/status.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_cpp _dingdong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dingdong_gencpp)
add_dependencies(dingdong_gencpp dingdong_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dingdong_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong
)
_generate_msg_eus(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong
)
_generate_msg_eus(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong
)
_generate_msg_eus(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong
)

### Generating Services

### Generating Module File
_generate_module_eus(dingdong
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dingdong_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dingdong_generate_messages dingdong_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_eus _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/position.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_eus _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_eus _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/status.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_eus _dingdong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dingdong_geneus)
add_dependencies(dingdong_geneus dingdong_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dingdong_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong
)
_generate_msg_lisp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong
)
_generate_msg_lisp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong
)
_generate_msg_lisp(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong
)

### Generating Services

### Generating Module File
_generate_module_lisp(dingdong
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dingdong_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dingdong_generate_messages dingdong_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_lisp _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/position.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_lisp _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_lisp _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/status.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_lisp _dingdong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dingdong_genlisp)
add_dependencies(dingdong_genlisp dingdong_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dingdong_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong
)
_generate_msg_nodejs(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong
)
_generate_msg_nodejs(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong
)
_generate_msg_nodejs(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dingdong
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dingdong_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dingdong_generate_messages dingdong_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_nodejs _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/position.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_nodejs _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_nodejs _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/status.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_nodejs _dingdong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dingdong_gennodejs)
add_dependencies(dingdong_gennodejs dingdong_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dingdong_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong
)
_generate_msg_py(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong
)
_generate_msg_py(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong
)
_generate_msg_py(dingdong
  "/home/spark/spark_noetic/src/dingdong/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong
)

### Generating Services

### Generating Module File
_generate_module_py(dingdong
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dingdong_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dingdong_generate_messages dingdong_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/SwiftproState.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_py _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/position.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_py _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/angle4th.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_py _dingdong_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/dingdong/msg/status.msg" NAME_WE)
add_dependencies(dingdong_generate_messages_py _dingdong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dingdong_genpy)
add_dependencies(dingdong_genpy dingdong_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dingdong_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dingdong
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dingdong_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dingdong
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dingdong_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dingdong
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dingdong_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dingdong
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dingdong_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dingdong
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dingdong_generate_messages_py std_msgs_generate_messages_py)
endif()
