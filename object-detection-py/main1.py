import time

import cv2
import os
from cvzone.HandTrackingModule import HandDetector


cap = cv2.VideoCapture(1)
cap.set(3,1280)
cap.set(4,720)
ptime = 0


while True:
    success,img = cap.read()
    ctime = time.time()
    fps = 1/(ctime-ptime)
    ptime = ctime
    cv2.putText(img,f'FPS:{int(fps)}',(40,70),cv2.FONT_HERSHEY_COMPLEX,
                3,(255,0,255),3)

    cv2.imshow("Image",img)
    cv2.waitKey(1)