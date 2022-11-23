from flask import flash, session
from models.enviarCorreo import enviar
from models import establecerToken,nuevoToken, getUser
def restablecer(email):
    print(email)
    user = []
    user = getUser.User(email)
    print(user)
    if user:
        id = str(user[0])
        print(id)
        token = nuevoToken.crearToken()
        establecerToken.newToken(id,token)
        messages = "Restablecimiento de contraseña"
        content = "<h2>Hola!</h2>\n<p>¿Has olvidado tu contraseña?\nNo te preocupes, vamos a reestablecer una nueva. \nPor favor haz clic en el siguiente enlace para activar una contraseña nueva:</p>\n<a target='_blank' href='http://localhost:5000/cambiarPass/"+id+"/"+token+"'>Restablecer contraseña</a>"
        emailReceived = enviar(messages,email,content)
        if emailReceived:
            flash('Se ha enviado al correo electrónico los pasos para restablecer la contraseña','bueno')
            flash('Puede cerrar esta página','bueno')
        else:
            flash('No se ha podido enviar a su correo electrónico los pasos para restablecer la contraseña','error')
        return emailReceived