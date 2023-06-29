from config.database import db
cursor = db.cursor(dictionary=True)

def crear(comentario, id_usuario, id):
    cursor = db.cursor()
    cursor.execute("INSERT INTO calificativo_comentarios (id_palabras_inga, id_usuario, comentario) VALUES (%s, %s, %s)", (id, id_usuario, comentario))
    db.commit()
    
    