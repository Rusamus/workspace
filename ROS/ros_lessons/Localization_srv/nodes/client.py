#!/usr/bin/python3
import roslib
roslib.load_manifest('Localization_srv')
import sys
import rospy
from Localization_srv.srv import *
from rospy.topics import Message

def sum_func():
    pass

def PNTR_pipeline():
    rospy.init_node('PNTR')
    my_service = rospy.Service('Localizaation_srv', Message, sum_func)
    rospy.spin()





if __name__ == '__main__':
    if len(sys.argv) == 4:
        timestamp = str(sys.argv[1])
        rgb_path = str(sys.argv[2])
        depth_path = str(sys.argv[3])

    else:
        print('Wrong input')
        sys.exit(1)

    PNTR_pipeline()

