from flask import flash,session, render_template,redirect
from werkzeug.security import check_password_hash
from models import existeEmail

def login(correo,password):
    isValid = True
    if correo == '':
        isValid = False
        flash('Correo electrónico','error')
    if password == '':
        isValid = False
        flash('Contraseña','error')
    if isValid == False:
        return render_template("/inicio_session/inicio_session.html", email=correo)
    else:
        if existeEmail.existe(correo):
            result = existeEmail.existe(correo)
            validarPassword = check_password_hash(result[10],password)
            if validarPassword:
                if result[12] == 'activo':
                    session['id_usuario'] = result[0]
                    session['username'] = result[9]
                    session['name']= result[2]
                    session['rol'] = result[3]
                    return validarPassword
                else:
                    return flash("La cuenta aún no ha sido activada, revisa tu correo electrónico",'error')
            else:
                return flash('Usuario o contraseña incorrectos','error')
        else:
            return flash("El usuario no existe",'error')
    

    