from config.database import db
from flask import flash
cursor = db.cursor()
def User(email):
    try:
        cursor.execute("SELECT * FROM usuarios WHERE email = '"+email+"'")
        response = cursor.fetchone()
        
        return response
    except: 
        print("Error occured in getUser")
        return flash('El email '+email+' no está registrado','error')
def IdUser(id):
    try:
        id = str(id)
        cursor.execute("SELECT * FROM usuarios WHERE id_usuario = '"+id+"'")
        response = cursor.fetchone()
        return response
    except: 
        print("Error occured in getIDUser")