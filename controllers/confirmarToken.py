from flask import flash, redirect
from models import cambiarEstadoUsuario,getTokenUser,getUser,validarUserTokenId
def valToken(token):
    result = getTokenUser.getToken(token)
    if not result == None:
        idUser = result[0]
        if cambiarEstadoUsuario.setnewToken(idUser):
            value = True
            flash("¡Felicidades, haz confirmado tu cuenta!", 'bueno')
    else:
        value = False
        flash('El token ya ha sido utilizado','error')
    return value

def validateIdToken(id,token):
    user = validarUserTokenId.validateUserIdToken(id,token)
    if user == None or user[5] == 'null':
        flash('La dirección url es incorrecta o ya se ha utilizado este token','error')
        return False
    else:
        return True
    
def validateToken(id):
    result = getUser.IdUser(id)
    if result[5] == 'NULL':
        flash('La dirección url es incorrecta o ya se ha utilizado este token','error')
        return False
    else:
        return True
    