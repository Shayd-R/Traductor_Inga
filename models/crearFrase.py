from config.database import db
cursor = db.cursor(dictionary=True)

def crear(id_categoria, frase, traduccion, imagen, id_usuario):
    cursor = db.cursor()
    print(frase+"-"+traduccion+"-"+imagen)
    cursor.execute("insert into contribucciones(frase_español, traduccion, imagen, id_categoria, id_usuario)values (%s, %s, %s, %s, %s)", (frase, traduccion, imagen, id_categoria, id_usuario))
    db.commit()

        