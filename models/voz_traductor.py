import pyttsx3

def voz_texto(texto_salida):
    engine = pyttsx3. init()
    engine.setProperty("rate", 150)
    text= texto_salida
    engine.say(text)
    
    return engine.runAndWait()