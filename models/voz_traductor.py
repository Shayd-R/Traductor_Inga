import pyttsx3
import pygame

def voz_texto(texto_salida):
    engine = pyttsx3. init()
    engine.setProperty("rate", 130)
    text= texto_salida
    engine.say(text)

    return engine.runAndWait()

def reproducir_audio(ruta):
    pygame.mixer.init()
    pygame.mixer.music.load(ruta)
    pygame.mixer.music.play()