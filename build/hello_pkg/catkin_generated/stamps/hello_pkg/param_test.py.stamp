#!/usr/bin/env python3

import rospy
import rospkg
from hello_pkg.srv import ParamAction, ParamActionResponse

import subprocess

PACKAGE_PATH = rospkg.RosPack().get_path('hello_pkg')+'/config/'

def Param_Action(req):
    if(req.action == 'get'):
        if(rospy.has_param(req.paraName)):
            print(req.paraName, rospy.get_param(req.paraName))
            return ParamActionResponse(True)
    elif(req.action == 'set'):
        rospy.set_param(req.paraName, req.value)
        print('set_param', req.paraName)
        return ParamActionResponse(True)
    elif(req.action == 'load'):
        if(len(req.fileName) > 0):
            subprocess.call(['rosparam', 'load', PACKAGE_PATH+req.fileName])
            return ParamActionResponse(True)
    elif(req.action == 'dump'):
        if(len(req.fileName) > 0):
            subprocess.call(['rosparam', 'dump', PACKAGE_PATH+req.fileName])
            return ParamActionResponse(True)
    return ParamActionResponse(False)

def main():
    rospy.init_node('param_test', anonymous=True)

    s = rospy.Service('param_test', ParamAction, Param_Action)
    print('Ready to param test.')
    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass