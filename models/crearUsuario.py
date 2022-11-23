from config.database import db
from models import userModel
cursor = db.cursor(dictionary=True)
def crear(nombre,email,password,token):
    try:
        userModel.resgistrarUsuario(nombre,email,password,token)
    except:
        print("Error en crear usuario")
    
        
    
    