xhost +
xhost +local:docker
docker run -it --net=host --cap-drop=all --privileged --env="DISPLAY=$DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" ros_noetic_intel bash -it -c "bash"
xhost -local:docker
xhost -
