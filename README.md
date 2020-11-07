# rostest_ws
## Roscore
---
```
$ roscore
```
## Build a workspace 
----
```
$ mkdir -p rosfirst_ws/src
$ cd rosfirst_ws/src
```
### init workplace
---
```
$ catkin_init_workspace
```
back to workspace and run catkin_make
```
$ cd ..
$ catkin_make
```
### create a package
---
catkin_create_pkg <-ur package-> [depend1] [depend2] ...
```
$ cd src
$ catkin_create_pkg hello_pkg rospy roscpp std_msgs
```
**depends：** the dependencies the package depends     
eg：       
roscpp, rospy, roslib, message_generation, cv_bridge, image_transport       
std_msgs -> commmon message library      
geometry_msgs -> commmon message library    
sensor_msgs -> commmon message library       
```
$ cd hello_pkg
$ ls
```
### create a python file for test
---
```
$ cd ~/rostest_ws/src/hello_pkg/src/
$ mkdir testuse && cd testuse
$ touch hello_world.py
$ nano hello_world.py
```
wirte some python code in hello_world.py.        
Then save and make hello_world.py executable.
```
$ chmod +x hello_world.py
``` 
back to hello_pkg and edit CmakeKists.txt
```
catkin_install_python(PROGRAMS      
  src/testuse/hello_world.py        
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```
uncomment the code above in the CmakeLists.txt.      
now u can run the testfile.
```
$ cd ~/rostest_ws
$ catkin_make
$ source devel/setup.bash
$ rosrun hello_pkg hello_world.py
```
### Publisher
---
back to hello_pkg and create a folder
```
$ cd ~/rostest_ws/src/hello_pkg
$ mkdir -p scripts/talker
$ cd talker
$ wget https://raw.github.com/ros/ros_tutorials/kinetic-devel/rospy_tutorials/001_talker_listener/talker.py
$ chmod +x talker.py
```
back to hello_pkg and edit CmakeKists.txt
```
catkin_install_python(PROGRAMS
  src/testuse/hello_world.py
  scripts/talker/talker.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```
check your whole workspace is ok-to-run
```
$ cd ~/rostest_ws
$ catkin_make
```
### Subscriber
---
back to hello_pkg and create a folder
```
$ cd ~/rostest_ws/src/hello_pkg/scripts
$ mkdir listener
$ cd listener
$ wget https://raw.github.com/ros/ros_tutorials/kinetic-devel/rospy_tutorials/001_talker_listener/listener.py
$ chmod +x listener.py
```
back to hello_pkg and edit CmakeKists.txt
```
catkin_install_python(PROGRAMS
  src/testuse/hello_world.py
  scripts/talker/talker.py
  scripts/listener/listener.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```
check your whole workspace is ok-to-run
```
$ cd ~/rostest_ws
$ catkin_make
```
**test code:** now you get a file can publish topic and another file to subscribe topic.     
open two terminal to test.
```
one terminal run 
$ rosrun hello_pkg talker.py
another one run
$ rosrun hello_pkg listener.py 
```