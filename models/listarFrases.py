from config.database import db
cursor = db.cursor()
def listar(id):
    try:
        cursor.execute("SELECT * FROM categorias WHERE id_categoria= %s",(id))
        db.commit()
        return True
    except:
        print("No se pudo cambiar el estado en la empresa")
        return False