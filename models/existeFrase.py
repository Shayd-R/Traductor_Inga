from config.database import db
cursor = db.cursor()
def existe(frase):
    cursor.execute("SELECT * FROM contribucciones WHERE frase_espanol = '"+frase+"'")
    myresult = cursor.fetchone()
    return myresult