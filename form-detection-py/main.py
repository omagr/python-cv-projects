import cv2
import numpy as np
import numpy as ny
def drawRec(biggestnew, mainFrame):
    cv2.line(mainFrame, (biggestnew[0][0][0], biggestnew[0][0][1]), (biggestnew[1][0][0], biggestnew[1][0][1]), (0, 255, 0), 20)
    cv2.line(mainFrame, (biggestnew[0][0][0], biggestnew[0][0][1]), (biggestnew[2][0][0], biggestnew[2][0][1]), (0, 0, 255), 20)
    cv2.line(mainFrame, (biggestnew[3][0][0], biggestnew[3][0][1]), (biggestnew[2][0][0], biggestnew[2][0][1]), (255, 0, 0), 20)
    cv2.line(mainFrame, (biggestnew[3][0][0], biggestnew[3][0][1]), (biggestnew[1][0][0], biggestnew[1][0][1]), (255, 0, 255), 20)


#coding
img = cv2.imread("loan2.png")
img = cv2.resize(img, (int(300*2), int(350*2)))
w, h = 400, 700
greyimg = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
blurdimg = cv2.GaussianBlur(greyimg, (5, 5), 1)
cannyframe = cv2.Canny(blurdimg, 190, 190)
contours, _ = cv2.findContours(cannyframe, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
contourframe = img.copy()
contourframe = cv2.drawContours(contourframe, contours, -1, (255, 0, 255), 4)
cornerframe = img.copy()
maxaera = 0
biggest = []

for i in contours:
    area = cv2.contourArea(i)
    if area > 500 :
        peri = cv2.arcLength(i, True)
        edgs = cv2.approxPolyDP(i, 0.02 * peri, True)
        if area > maxaera and len(edgs) == 4:
            biggest = edgs
            maxaera = area

if len(biggest) != 0:
  #  drawRec(biggest, cornerframe)

    biggest = biggest.reshape((4, 2))
    biggestnew = np.zeros((4, 1, 2), dtype=np.int32)
    add  = biggest.sum(1)
    biggestnew[0] = biggest[np.argmin(add)]
    biggestnew[3] = biggest[np.argmax(add)]
    dif = np.diff(biggest, axis=1)
    biggestnew[1] = biggest[np.argmin(dif)]
    biggestnew[2] = biggest[np.argmax(dif)]
    drawRec(biggestnew, cornerframe)
    cornerframe = cv2.drawContours(cornerframe, biggestnew, -1, (255, 0, 255), 50)
    pts1 = np.float32(biggestnew)
    pts2 = np.float32([[0, 0], [w, 0], [0, h], [w, h]])
    matrix = cv2.getPerspectiveTransform(pts1, pts2)
   # imgwrap = cv2.warpPerspective(img, matrix, (w, h))
    imgwrap: None = cv2.warpPerspective(img, matrix, (w, h))




#resize

img = cv2.resize(img, (500, 550))
greyimg = cv2.resize(greyimg, (500, 550))
blurdimg = cv2.resize(blurdimg, (500, 550))
cannyframe = cv2.resize(cannyframe, (500, 550))
contourframe = cv2.resize(contourframe, (500, 550))
cornerframe = cv2.resize(cornerframe, (500, 550))

#dis
cv2.imshow("img", img)
cv2.imshow("greyimg", greyimg)
cv2.imshow("blurdimg", blurdimg)
cv2.imshow("cannyframe", cannyframe)
cv2.imshow("contourframe", contourframe)
cv2.imshow("cornerframe", cornerframe)
cv2.imshow("outputimagge", imgwrap)
cv2.waitKey(0)




















