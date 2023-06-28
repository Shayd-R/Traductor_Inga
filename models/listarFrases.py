from config.database import db
cursor = db.cursor()
def listar(id):
    try:
        cursor.execute("SELECT * FROM categorias WHERE id_categoria= %s",(id))
        categoria=cursor.fetchone()
        categoria[0]
        db.commit()
        return True
    except:
        return False