"""NOTE: this example requires PyAudio because it uses the Microphone class"""

import speech_recognition as sr

# obtain audio from the microphone
r = sr.Recognizer()
with sr.Microphone() as source:
    print("Say something!")
    audio = r.listen(source)
['Microsoft Sound Mapper - Input', 'Microphone (High Definition Aud', 'Microsoft Sound Mapper - Output', 'Altavoces (High Definition Audi', 'Controlador primario de captura de sonido', 'Microphone (High Definition Audio Device)', 'Controlador primario de sonido', 'Altavoces (High Definition Audio Device)', 'ASIO4ALL v2', 'Altavoces (High Definition Audio Device)', 'Microphone (High Definition Audio Device)', 'Speakers (HD Audio Headphone/Speakers)', 'Micrófono (HD Audio Microphone)']

# recognize speech using IBM Speech to Text
IBM_USERNAME = "itomasevich@accionpoint.com"  # IBM Speech to Text usernames are strings of the form XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
IBM_PASSWORD = "Viernes.85IT"  # IBM Speech to Text passwords are mixed-case alphanumeric strings
try:
    print("IBM Speech to Text thinks you said " + r.recognize_ibm(audio, username=IBM_USERNAME, password=IBM_PASSWORD))
except sr.UnknownValueError:
    print("IBM Speech to Text could not understand audio")
except sr.RequestError as e:
    print("Could not request results from IBM Speech to Text service; {0}".format(e))
