#!/usr/bin/env roseus

(ros::roseus "pr2_sample")
(load "package://pr2eus/pr2-interface.l")
(pr2-init)

(do-until-key
 (send *pr2* :reset-manip-pose)
 (send *ri* :angle-vector (send *pr2* :angle-vector) 5000)
 (send *ri* :wait-interpolation)
 (send *pr2* :init-pose)
 (send *ri* :angle-vector (send *pr2* :angle-vector) 5000)
 (send *ri* :wait-interpolation))

       
