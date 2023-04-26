#importing libraries 


import cv2

# import numpy as np

#reading image


img = cv2.imread("elon.jpg")

# Edges

gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

gray = cv2.medianBlur (gray, 5)

edges=cv2.adaptiveThreshold(gray, 555, cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY, 19, 19)

# Cartoonization

color = cv2.bilateralFilter(img, 10, 550, 550)

cartoon = cv2.bitwise_and(color, color, mask=edges)

cv2.imshow("Image", img)

cv2.imshow("edges", edges)

cv2.imshow("Cartoon", cartoon) 
cv2.waitKey(0)

cv2.destroyAllWindows()