
import pyttsx3

import speech_recognition as sr

engine = pyttsx3.init('sapi5')
voices = engine.getProperty('voices')
print(voices)
engine.setProperty('voice', voices[1].id)

print(voices[1].id)
def speak(audio):
   engine.say(audio)
   engine.runAndWait()

def takeCommand():
    r = sr.Recognizer()
    with sr.Microphone() as source:

        print('lisinting.......')
        r.pause_threshold = 1
        audio = r.listen(source)
    try:
        print('recognizing...')
        query = r.recognize_google(audio, language='en-in')
        print(f"user said:{query}\n")
    except Exception as e:
        print(e)

        print("say again...")
        return "none"
    return query


if __name__ == "__main__":

    takeCommand()














