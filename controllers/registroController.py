from flask import flash,render_template,redirect
import re
from werkzeug.security import generate_password_hash
from models import existeEmail,enviarCorreo,nuevoToken,crearUsuario
def registro(nombre,email,password):
    try:
        isValid = True
        patternpw=re.compile('(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}')
        passwordval = re.search(patternpw, password)
        userAuth = False
        if nombre == '':
            isValid = False
            flash('Nombre', 'error')
        if email == '':
            isValid = False
            flash('Email', 'error')
        if not passwordval or password=='':
            isValid = False
            flash('Contraseña', 'error')
            flash('El campo contraseña debe contener un mínimo de 8 caracteres, un máximo de 20, letras(minúsculas y MAYÚSCULAS) y Números', 'error')
        if isValid == False:
            return render_template("/registro/registro.html",nombre=nombre,email=email)
        else:
            result = existeEmail.existe(email)
            if result:
                flash("El email "+email+" ya se encuentra registrado", 'bueno')
                return redirect('/inicio_session')
            else:
                password=generate_password_hash(password)
                token = nuevoToken.crearToken()
                asunto = "Registro en Foodrosif. Activa tu cuenta "+nombre+""
                content = "<h2>Confirma tu correo electrónico: "+email+" </h2>\n<h4>Activa tu cuenta dando clic al siguiente enlace </h4>\n<a target='_blank' href='http://localhost:5000/confirmarToken/"+token+"'>Activar</a>"
                emailReceived = enviarCorreo.enviar(asunto,email,content)
                emailReceived = True
                if emailReceived:
                    crearUsuario.crear(nombre,email,password,token)
                    userAuth = True
                    
        return userAuth
    except:
        flash("Ha habido un problema al enviar el correo", 'error')
      
