
from flask import Flask, jsonify,render_template,request,redirect,url_for,session,flash,json,make_response
from models import voz_traductor, traduccion_texto
from config.database import db

app = Flask(__name__)
app.secret_key = "##91!IasdyAjadfbdfan"

@app.route("/", methods=["GET", "POST"])
def inicio():

    return render_template("/traductor/traductor.html")

@app.route("/texto", methods=["GET", "POST"])
def texto():
    if request.method=='POST':
        texto_entrada= request.form['texto_entrada']
        texto=texto_entrada.split()
        traducido=[]
        for palabra in texto:
            print(palabra)
            cursor = db.cursor(dictionary=True)
            cursor.execute("SELECT * FROM palabras_espanol WHERE palabra_espanol='"+palabra+"' OR palabra_espanol LIKE '%"+palabra+"%' ")
            a=cursor.fetchone()
            if a==None:
                a=palabra
            else:
                a=a['traduccion']   
            traducido.append(a)
            db.commit()
        texto_salida=traduccion_texto.concatenar_palabras(traducido, "  ")
        return render_template("/traductor/traductor.html", texto_salida=texto_salida, texto_entrada=texto_entrada)
    return render_template("/traductor/traductor.html")


@app.route("/audio", methods=["GET", "POST"])
def audio():    
    texto_entrada= request.form['texto_entrada']
    texto=texto_entrada.split()
    traducido=[]
    for palabra in texto:
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM palabras_espanol WHERE palabra_espanol='"+palabra+"' OR palabra_espanol LIKE '%"+palabra+"%' ")
        a=cursor.fetchone()
        if a==None:
            a=palabra
        else:
            a=a['traduccion']   
        traducido.append(a)
        db.commit()
        texto_salida=traduccion_texto.concatenar_palabras(traducido, "  ")
    voz_traductor.voz_texto(texto_salida)
    return render_template("/traductor/traductor.html", texto_entrada=texto_entrada, texto_salida=texto_salida)
    
app.run(debug=True)