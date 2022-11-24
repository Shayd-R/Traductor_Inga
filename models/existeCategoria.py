from config.database import db
cursor = db.cursor()
def existe(nombre):
    cursor.execute("SELECT * FROM categorias WHERE nombre_categoria = '"+nombre+"'")
    myresult = cursor.fetchone()
    return myresult