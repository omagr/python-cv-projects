import pyttsx3

import PyPDF2

pdfreas = PyPDF2.PdfFileReader(open('elon.pdf','rb'))

print(pdfreas.getNumPages())

speakr = pyttsx3.init()
page = pdfreas.getPage(8)
text = page.extractText()
speakr.say(text)
speakr.runAndWait()

'''
speakr = pyttsx3.init()

for pagenm in range(pdfreas.numPages):
    text = pdfreas.getPage(pagenm).extractText()
    speakr.say(text)
    speakr.runAndWait()

speakr = pyttsx3.init()
speakr.say('hey man how are you , hmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm')
speakr.runAndWait()'''