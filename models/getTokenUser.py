from config.database import db
cursor = db.cursor()
def getToken(token):
    try:
        cursor.execute("SELECT * FROM usuarios WHERE token = '"+token+"'")
        myresult = cursor.fetchone()
        return myresult
    except: 
        print("Error en getTokenUser")

        