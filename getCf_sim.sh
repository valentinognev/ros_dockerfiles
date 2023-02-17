
git clone https://github.com/ethz-asl/mav_comm
git clone git@github.com:rnd-hub/cf_sim.git --recursive

cd cf_sim/crazyflie_ros/
git clone git@github.com:rnd-hub/crazyflie_cpp.git 
cd crazyflie_cpp
git checkout 25bc72c120f8cea6664dd24e334eefeb7c9606ca
cd ../../cf_app_layer
git clone git@github.com:rnd-hub/cf_firmware_new.git
cd cf_firmware_new
git checkout f8a62425b7ac2b7bc120f77d70ac3037ebe73605
cd ..


sed -i 's%CV_LOAD_IMAGE_GRAYSCALE%cv::IMREAD_GRAYSCALE%' /home/valentin/catkin_ws/src/cf_sim/sim_cf_gazebo/src/gazebo_odometry_plugin.cpp
sed -i 's% -Werror -Werror % -Werror -Wno-error=address-of-packed-member %' /home/valentin/catkin_ws/src/cf_sim/sim_cf_firmware/sitl_make/CMakeLists.txt

cp /home/valento/catkin_ws/src/cf_sim/sim_cf_firmware/version.c /home/valento/catkin_ws/src/cf_sim/cf_app_layer/
cd /home/valento/catkin_ws/src/cf_sim/cf_app_layer/sitl_make
mkdir build 
cd build
cmake ..
make

cd ../../sim_cf_firmware
git clone git@github.com:rnd-hub/cf_app_layer.git --recursive
cd cf_app_layer && git checkout 1d4e46ae259f8b4c185309d3e0f3463fdbc7fb22


roslaunch crazyflie_gazebo crazyflie_sim.launch
/home/valentin/catkin_ws/src/cf_sim/sim_cf_gazebo/scripts/run_cfs.sh 

roslaunch crazyflie_gazebo crazyflie_sim.launch uri:=radio://0/120/2M/E7E7E7E742
roslaunch crazyflie_gazebo crazyflie_sim.launch uri:=radio://10/80/2M/E7E7E7E741
# 
# 
# 
# cd ..
# git clone git@github.com:rnd-hub/crazyflie_tools.git --recursive
# cd crazyflie_tools
# git checkout e7a8893ad63a04b63891e73244a3623131bbdc68
# 

# 
# 
# 
# git clone git@github.com:rnd-hub/cf_sim.git --recursive
# 
# cd cf_sim//crazyflie_ros/
# 
# 
# 
