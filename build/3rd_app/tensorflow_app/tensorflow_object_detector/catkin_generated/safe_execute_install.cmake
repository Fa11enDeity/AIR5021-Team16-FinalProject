execute_process(COMMAND "/home/spark/spark_noetic/build/3rd_app/tensorflow_app/tensorflow_object_detector/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/spark/spark_noetic/build/3rd_app/tensorflow_app/tensorflow_object_detector/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
