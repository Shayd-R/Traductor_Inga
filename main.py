
from flask import Flask, jsonify,render_template,request,redirect,url_for,session,flash,json,make_response
from hashlib import sha256
from models import voz_traductor, traduccion_texto
from controllers import loginController,registroController,confirmarToken,restablecerPassword,cambiarPassword, autenticacionController
from config.database import db

app = Flask(__name__)
app.secret_key = "##91!IasdyAjadfbdfan"

@app.route("/", methods=["GET", "POST"])
def inicio():
    return render_template("/inicio/inicio.html")

@app.route("/inicio_session", methods=["GET", "POST"])
def inicio_session():
    if request.method=='POST':
        email=request.form['email']
        password=request.form['password']
        if loginController.login(email,password) == True:
            return redirect(url_for('muro'))
        else:
            return render_template("/inicio_session/inicio_session.html")
    return render_template("/inicio_session/inicio_session.html")

@app.route("/muro", methods=["GET", "POST"])
def muro():
    if autenticacionController.vericarAutenticacion():
        id_sesion=session['name']
        rol=session['rol']
        return render_template("menu/menu.html", id_sesion=id_sesion, rol=rol)
    else:
        return redirect(url_for('inicio'))

@app.route("/registrarUsuario", methods=["GET", "POST"])
def registrar_usuario():
    if request.method=='POST':
        nombre = request.form.get("nombre")
        email = request.form.get("email")
        password = request.form.get("password")
        if registroController.registro(nombre,email,password) == True:
            flash("Confirma tu correo")
        else:
            return render_template("/registro/registro.html",nombre=nombre,email=email)
    return render_template("/registro/registro.html")

@app.route("/restorePassword", methods=["GET", "POST"])
def restorePassword():
    print('1')
    if autenticacionController.vericarAutenticacion():
        print(2)
        if request.method== 'POST':
            email=request.form['email']
            if restablecerPassword.restablecer(email):
                return redirect(url_for('inicio'))
        return render_template("/correo_restablecer_contraseña/correoRestablecerPassword.html")
    else:
        print('3')
        return render_template("/correo_restablecer_contraseña/correoRestablecerPassword.html")
    
    
    
@app.get("/cambiarPass/<id>/<token>")
def cambiarPass(id,token):
    if confirmarToken.validateIdToken(id,token)==True:
        return render_template("/restablecer_contraseña/restablecer_password.html",id=id)
    else:
        return redirect(url_for('inicio_session'))
    
@app.post("/newPassword")
def newPassword():
    if request.method == 'POST':
        id = request.form.get("id")
        session['token'] =id
        password = request.form.get("password")
        password_verificacion= request.form.get("password_verificacion")
        if password==password_verificacion:
            if confirmarToken.validateToken(id):
                cambiarPassword.cambiar(id,password)
                return redirect(url_for('inicio_session'))
    return render_template("/restablecer_contraseña/restablecer_password.html")

@app.route("/confirmarToken/<token>", methods=["GET", "POST"])
def authToken(token):
    if confirmarToken.valToken(token) == True:
        return redirect(url_for('inicio_session'))
    else:
        return redirect(url_for('inicio_session'))

@app.route("/traductor", methods=["GET", "POST"])
def traductor():
    return render_template("/traductor/traductor.html")

@app.route("/traduccion", methods=["GET", "POST"])
def traduccion():
    if request.method=='POST':
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
        return render_template("/traductor/traductor.html", texto_salida=texto_salida, texto_entrada=texto_entrada)
    return render_template("/traductor/traductor.html")


@app.route("/voz", methods=["GET", "POST"])
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