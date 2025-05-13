# Install script for directory: /home/spark/spark_noetic/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/spark/spark_noetic/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/spark/spark_noetic/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/spark/spark_noetic/install" TYPE PROGRAM FILES "/home/spark/spark_noetic/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/spark/spark_noetic/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/spark/spark_noetic/install" TYPE PROGRAM FILES "/home/spark/spark_noetic/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/spark/spark_noetic/install/setup.bash;/home/spark/spark_noetic/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/spark/spark_noetic/install" TYPE FILE FILES
    "/home/spark/spark_noetic/build/catkin_generated/installspace/setup.bash"
    "/home/spark/spark_noetic/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/spark/spark_noetic/install/setup.sh;/home/spark/spark_noetic/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/spark/spark_noetic/install" TYPE FILE FILES
    "/home/spark/spark_noetic/build/catkin_generated/installspace/setup.sh"
    "/home/spark/spark_noetic/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/spark/spark_noetic/install/setup.zsh;/home/spark/spark_noetic/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/spark/spark_noetic/install" TYPE FILE FILES
    "/home/spark/spark_noetic/build/catkin_generated/installspace/setup.zsh"
    "/home/spark/spark_noetic/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/spark/spark_noetic/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/spark/spark_noetic/install" TYPE FILE FILES "/home/spark/spark_noetic/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/spark/spark_noetic/build/gtest/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/move2grasp/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/camera/realsense-ros/realsense2_description/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark/serial/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_amcl/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_depth2laser/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_gmapping/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_map_server/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_movebase/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/camera_calibrator/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/camera/camera_driver_transfer/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/base/cereal_port/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/dingdong/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/lidar/lidar_driver_transfer/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark/spark_bringup/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/spark_carry/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark/spark_description/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_fetchtea/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/spark_follower/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/spark_slam/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/spark_voice/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/follower_velocity_smoother/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/darknet_ros/darknet_ros_msgs/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/dingdongtest/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/lidar/iiiroboticslidar2/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/camera/astra_camera/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/cv_tutorial/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/darknet_ros/darknet_ros/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/app_shell/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/camera/realsense-ros/realsense2_camera/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/base/spark_base/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/spark_navigation/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_app/spark_rtabmap/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/spark_teatask/spark_set_kitchen/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark/spark_teleop/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark/spark_test/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/arm/uArm/swiftpro/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/arm/uArm/pro_moveit_config/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/arm/uArm/swift_moveit_config/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/tensorflow_app/vision_msgs/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/3rd_app/tensorflow_app/tensorflow_object_detector/cmake_install.cmake")
  include("/home/spark/spark_noetic/build/spark_driver/lidar/ydlidar_g2/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/spark/spark_noetic/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
