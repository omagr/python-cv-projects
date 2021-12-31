
import cv2
import mediapipe


from math import  hypot
from ctypes import  cast, POINTER
from comtypes import CLSCTX_ALL
from pycaw.pycaw import AudioUtilities, IAudioEndpointVolume
import numpy as ny

cap= cv2.VideoCapture(0)
mpHand = mediapipe.solutions.hands
hands = mpHand.Hands()
mpDrwar = mediapipe.solutions.drawing_utils

device = AudioUtilities.GetSpeakers()
interface = device.Activate(IAudioEndpointVolume._iid_, CLSCTX_ALL,None)
volume = cast(interface,POINTER(IAudioEndpointVolume))
volMin,volMax = volume . GetVolumeRange()[:2]
while True:
    success,img = cap.read()
    imgRGB = cv2.cvtColor(img,cv2.COLOR_BayerGR2RGB)
    result= hands.process(imgRGB)

    lmList = []
    if result.multi_hand_landmarks:
        for handlandmark in result.multi_hand_landmarks:
            for id,lm in enumerate(handlandmark.landmark) :
                h,w = img.
