#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/spark/spark_noetic/src/3rd_app/tensorflow_app/tensorflow_object_detector"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/spark/spark_noetic/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/spark/spark_noetic/install/lib/python3/dist-packages:/home/spark/spark_noetic/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/spark/spark_noetic/build" \
    "/usr/bin/python3" \
    "/home/spark/spark_noetic/src/3rd_app/tensorflow_app/tensorflow_object_detector/setup.py" \
     \
    build --build-base "/home/spark/spark_noetic/build/3rd_app/tensorflow_app/tensorflow_object_detector" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/spark/spark_noetic/install" --install-scripts="/home/spark/spark_noetic/install/bin"
