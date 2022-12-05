from config.database import db
cursor = db.cursor(dictionary=True)

def crear(nombre, imagen):
    cursor = db.cursor()
    cursor.execute("insert into categorias(nombre_categoria, imagen_categoria)values (%s, %s)", (nombre, imagen))
    db.commit()
    