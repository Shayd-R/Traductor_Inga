from config.database import db
cursor = db.cursor()
def newToken(id,token):
    try:
        cursor.execute("UPDATE usuarios SET token = %s WHERE id_usuario = %s",(token,id))
        db.commit()
    except:
        print("Error occured in createNewToken")