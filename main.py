
from flask import Flask, jsonify,render_template,request,redirect,url_for,session,flash,json,make_response
from models import voz_traductor

app = Flask(__name__)
app.secret_key = "##91!IasdyAjadfbdfan"

@app.route("/", methods=["GET", "POST"])
def inicio():

    return render_template("/traductor/traductor.html")

@app.route("/texto", methods=["GET", "POST"])
def texto():
    if request.method=='POST':
        text= request.form['texto_entrada']
        if text=="hola":
            a="hello"
        else:
            a=text
        return render_template("/traductor/traductor.html", texto_salida=a, texto_entrada=text)
    
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