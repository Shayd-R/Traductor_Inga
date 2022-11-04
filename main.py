
from flask import Flask, jsonify,render_template,request,redirect,url_for,session,flash,json,make_response
from models import voz_traductor, traduccion_texto

app = Flask(__name__)
app.secret_key = "##91!IasdyAjadfbdfan"

@app.route("/", methods=["GET", "POST"])
def inicio():

    return render_template("/traductor/traductor.html")

@app.route("/texto", methods=["GET", "POST"])
def texto():
    if request.method=='POST':
        texto_obtenido= request.form['texto_entrada']+" "
        texto=texto_obtenido.split()
        traducido=[]
        for palabra in texto:
            if palabra=="hola":
                a="hello"
            else:
                a=palabra
            traducido.append(a)  
            print(traducido)
        print(traducido)
        texto_salida=traduccion_texto.concatenar_palabras(traducido, " ")


        return render_template("/traductor/traductor.html", texto_salida=texto_salida, texto_entrada=texto_obtenido)
    
    return render_template("/traductor/traductor.html")


@app.route("/audio", methods=["GET", "POST"])
def audio():
    texto_entrada= request.form['texto_entrada']
    if texto_entrada=="hola":
        texto_salida="hello"
    else:
        texto_salida=texto_entrada
    
    if texto_salida=="":
        return redirect(url_for('inicio'))
    else:
        voz_traductor.voz_texto(texto_salida)
    return render_template("/traductor/traductor.html", texto_entrada=texto_entrada, texto_salida=texto_salida)
    

app.run(debug=True)