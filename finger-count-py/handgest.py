import os
import time

import HandTrackingModule as hm
import cv2

wCam, hCam = 640, 488
cap = cv2.VideoCapture(0)
cap.set(3, wCam)
cap.set(4, wCam)


folderPath: str = "finger"
mylist = os.listdir(folderPath)
print(mylist)
overlay = []

for impath in mylist:
    Image = cv2.imread(f'{folderPath}/{impath}')
    overlay.append(Image)
   # print(f'{folderPath}/{impath}')
#print(len(overlay))





pTime = 0

dectector = hm.handDetector()

while True:

    success, img = cap.read()
    img=dectector.findHands(img)

    h, w, c = overlay[3].shape

    img[0:h, 0:w] = overlay[3]

    cTime = time.time()
    fps = 1/(cTime-pTime)
    pTime=cTime

    cv2.putText(img, f'FPS: {int(fps)}', (400,70), cv2.FONT_HERSHEY_PLAIN,
                3, (255,0,0), 3)

    cv2.imshow("Image", img)
    cv2.waitKey(1)


