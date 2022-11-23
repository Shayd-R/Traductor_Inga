from config.database import db
cursor = db.cursor()
def validateUserIdToken(id,token):
    try:
        id= int(id)
        if id>0:
            cursor.execute("SELECT * FROM usuarios WHERE id_usuario = %s and token = %s",(id,token))
            response = cursor.fetchone()
        return response
    except: 
        print("Error occured in getValidateUsertoken")