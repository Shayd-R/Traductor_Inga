from flask import flash
from werkzeug.security import generate_password_hash
import re
from models import cambiarPassword
def cambiar(id,password):
    try:
        patternpw=re.compile('(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}')
        valorPass = re.search(patternpw, password)
        autenticacion = False
        if not valorPass or password=='':
            flash('Contraseña:', 'error')
            flash('El campo contraseña debe contener un mínimo de 8 caracteres, un máximo de 20, letras, (minúsculas y MAYÚSCULAS) y Números','error')
        else:
            passwordCod=generate_password_hash(password)
            cambiarPassword.setNewPassword(passwordCod,id)
            autenticacion = True
            flash('Se ha realizado el cambio de contraseña exitosamente','bueno')
        return autenticacion
    except:
        print("Error occured")
        flash("Ha habido un problema al cambiar la contraseña",'error')
        flash("Vuelva a intentarlo",'error')