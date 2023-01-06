# docker run -it --net=host --gpus all --env="NVIDIA_DRIVER_CAPABILITIES=all" --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" nvidia_ros_galactic bash

xhost local:root
XAUTH=/tmp/.docker.xauth

docker run -it --gpus all --env="DISPLAY=$DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="NVIDIA_DRIVER_CAPABILITIES=all" --env="XAUTHORITY=$XAUTH" --net=host  --runtime=nvidia --privileged ros_galactic_nvidia bash
