from config.database import db
cursor = db.cursor()
def existe(email):
    cursor.execute("SELECT * FROM usuarios WHERE email = '"+email+"'")
    myresult = cursor.fetchone()
    return myresult