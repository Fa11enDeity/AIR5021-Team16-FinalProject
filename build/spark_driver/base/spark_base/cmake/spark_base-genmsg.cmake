# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spark_base: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ispark_base:/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spark_base_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" NAME_WE)
add_custom_target(_spark_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spark_base" "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" ""
)

get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" NAME_WE)
add_custom_target(_spark_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spark_base" "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" ""
)

get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" NAME_WE)
add_custom_target(_spark_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spark_base" "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" ""
)

get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" NAME_WE)
add_custom_target(_spark_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spark_base" "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base
)
_generate_msg_cpp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base
)
_generate_msg_cpp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base
)
_generate_msg_cpp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base
)

### Generating Services

### Generating Module File
_generate_module_cpp(spark_base
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spark_base_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spark_base_generate_messages spark_base_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_cpp _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_cpp _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_cpp _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_cpp _spark_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spark_base_gencpp)
add_dependencies(spark_base_gencpp spark_base_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spark_base_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base
)
_generate_msg_eus(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base
)
_generate_msg_eus(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base
)
_generate_msg_eus(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base
)

### Generating Services

### Generating Module File
_generate_module_eus(spark_base
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(spark_base_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(spark_base_generate_messages spark_base_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_eus _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_eus _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_eus _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_eus _spark_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spark_base_geneus)
add_dependencies(spark_base_geneus spark_base_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spark_base_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base
)
_generate_msg_lisp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base
)
_generate_msg_lisp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base
)
_generate_msg_lisp(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base
)

### Generating Services

### Generating Module File
_generate_module_lisp(spark_base
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spark_base_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spark_base_generate_messages spark_base_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_lisp _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_lisp _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_lisp _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_lisp _spark_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spark_base_genlisp)
add_dependencies(spark_base_genlisp spark_base_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spark_base_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base
)
_generate_msg_nodejs(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base
)
_generate_msg_nodejs(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base
)
_generate_msg_nodejs(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base
)

### Generating Services

### Generating Module File
_generate_module_nodejs(spark_base
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(spark_base_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(spark_base_generate_messages spark_base_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_nodejs _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_nodejs _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_nodejs _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_nodejs _spark_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spark_base_gennodejs)
add_dependencies(spark_base_gennodejs spark_base_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spark_base_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base
)
_generate_msg_py(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base
)
_generate_msg_py(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base
)
_generate_msg_py(spark_base
  "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base
)

### Generating Services

### Generating Module File
_generate_module_py(spark_base
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spark_base_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spark_base_generate_messages spark_base_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/GyroMessage.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_py _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseOdom.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_py _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseDock.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_py _spark_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spark/spark_noetic/src/spark_driver/base/spark_base/msg/SparkBaseSensor.msg" NAME_WE)
add_dependencies(spark_base_generate_messages_py _spark_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spark_base_genpy)
add_dependencies(spark_base_genpy spark_base_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spark_base_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spark_base
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(spark_base_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spark_base
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(spark_base_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spark_base
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(spark_base_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spark_base
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(spark_base_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spark_base
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(spark_base_generate_messages_py std_msgs_generate_messages_py)
endif()
