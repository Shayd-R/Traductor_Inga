from config.database import db
cursor = db.cursor()
def setnewToken(id):
    estado= 'activo'
    try:
        cursor.execute("UPDATE usuarios SET estado = %s, token = NULL WHERE id_usuario = %s ",(estado,id))
        db.commit()
        return True
    except:
        print("No se pudo cambiar el estado en la empresa")
        return False