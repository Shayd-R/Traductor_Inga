
from flask import Flask, jsonify, render_template, request, redirect, url_for, session, flash, json, make_response
from hashlib import sha256
from models import voz_traductor, traduccion_texto, userModel, crearCategoria, existeCategoria, crearFrase, crearComentario
from controllers import loginController, registroController, confirmarToken, restablecerPassword, cambiarPassword, autenticacionController
from config.database import db


app = Flask(__name__)
app.secret_key = "##91!IasdyAjadfbdfan"

@app.route("/")
def inicio():
    return render_template("/inicio/inicio.html")

@app.route("/inicio_session", methods=["GET", "POST"])
def inicio_session():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']
        if loginController.login(email, password) == True:
            return redirect(url_for('muro'))
        else:
            return render_template("/inicio_session/inicio_session.html")
    return render_template("/inicio_session/inicio_session.html")

@app.get("/exit")
def exit():
    if autenticacionController.vericarAutenticacion():
        session.clear()
    return redirect(url_for('inicio_session'))

@app.route("/muro", methods=["GET", "POST"])
def muro():
    if autenticacionController.vericarAutenticacion():
        id= session['id_usuario']
        nombre = session['name']
        rol = session['rol']
        cursor = db.cursor()
        cursor.execute("SELECT * FROM usuarios where id_usuario='"+str(id)+"'")
        imagen=cursor.fetchone()
        cursor.execute("SELECT * FROM categorias")
        categorias = cursor.fetchall()
        return render_template("menu/menu.html", imagen=imagen[1], nombre=nombre, rol=rol, id=id, categorias=categorias)
    else:
        return redirect(url_for('inicio'))
    
@app.route('/editarPerfil/<string:idperfil>', methods=['GET', 'POST'])
def editar_perfil(idperfil):
    if autenticacionController.vericarAutenticacion():
        nombre=request.form['nombre']
        direccion=request.form['direccion']
        telefono=request.form['telefono']
        ubicacion=request.form['ubicacion']
        nacimiento=request.form['nacimiento']
        imagen_perfil = request.files['imagen_perfil']
        if imagen_perfil:
            nombreImagen = userModel.nombreImagen(imagen_perfil)
            imagenn = nombreImagen
            imagen_perfil.save('./static/img/usuarios/'+nombreImagen)
        else:
            imagenn = None
        userModel.editarPerfil(idperfil=idperfil, imagenn=imagenn, nombre=nombre, direccion=direccion, telefono=telefono, ubicacion=ubicacion, nacimiento=nacimiento)
        flash('Se ha editado el perfil correctamente','bueno')
        return redirect(url_for('muro'))
    else:
        return redirect(url_for('inicio'))
    
@app.route("/ajaxperfil", methods=["GET", "POST"])
def ajaxperfil():
    cursor = db.cursor()
    if request.method=='POST':
        id=request.form['id']
        cursor.execute("SELECT * FROM usuarios WHERE id_usuario= "+ id)
        usuario = cursor.fetchall()
    return jsonify({'htmlresponse': render_template('menu/responseperfil.html', usuario=usuario)})

@app.route("/frasesCategoria/<string:id>/<string:nombre>", methods=["GET", "POST"])
def frases(id, nombre):
    cursor = db.cursor()
    if autenticacionController.vericarAutenticacion():
        name = session['name']
        rol = session['rol']
        cursor.execute("SELECT * FROM contribucciones WHERE id_categoria= "+id+" and confirmacion='si' ")
        frases_categorias = cursor.fetchall()
        return render_template("menu/categorias.html", nombre_categoria=nombre, id=id, name=name, rol=rol, frases_categoria=frases_categorias)
    else:
        return redirect(url_for('inicio'))

@app.route("/registrarUsuario", methods=["GET", "POST"])
def registrar_usuario():
    if request.method == 'POST':
        nombre = request.form.get("nombre")
        email = request.form.get("email")
        password = request.form.get("password")
        reppassword = request.form.get("reppassword")
        if password == reppassword:
            if registroController.registro(nombre, email, password) == True:
                flash("Confirma tu correo", 'bueno')
            else:
                return render_template("/registro/registro.html", nombre=nombre, email=email)
        else:
            flash('Las contraseñas no coinciden', 'error')
            return render_template("/registro/registro.html", nombre=nombre, email=email)
    return render_template("/registro/registro.html")

@app.route("/crearCategoria", methods=["GET", "POST"])
def crear_categoria():
    if request.method == 'GET':
        return render_template('/menu/menu.html')

    if request.method == 'POST':
        nombre = request.form.get('nombre')
        if nombre == "":
            flash("El campo nombre esta vacio", "error")
            return redirect(url_for('muro'))
        imagen = request.files.get('imagen')
        resultado = existeCategoria.existe(nombre)
        if resultado:
            flash("Ya existe esta categoria", "error")
            return redirect(url_for('muro'))
        img = userModel.nombreImagen(imagen)
        crearCategoria.crear(nombre=nombre, imagen=img)
        imagen.save('./static/img/categorias/'+str(img))
        flash("Se ha creado la categoria: "+nombre, 'bueno')
    return redirect(url_for('muro'))

@app.route('/editarCategoria/<string:idcategoria>', methods=['GET', 'POST'])
def editar_categoria(idcategoria):
    if autenticacionController.vericarAutenticacion():
        categoria = request.form['categoria']
        imagen = request.files['imagen']
        if imagen:
            nombreImagen = userModel.nombreImagen(imagen)
            imagenn = nombreImagen
            imagen.save('./static/img/categorias/'+nombreImagen)
        else:
            imagenn = None
        userModel.editarCategoria(idcategoria=idcategoria, categoria=categoria, imagenn=imagenn)
        flash('Se ha editado la categoria correctamente','bueno')
        return redirect(url_for('muro'))
    else:
        return redirect(url_for('inicio'))
    
@app.route('/eliminarCategoria/<string:id_categoria>', methods=['GET', 'POST'])
def eliminar_categoria(id_categoria):
    if autenticacionController.vericarAutenticacion(): 
        userModel.eliminarCategoria(id_categoria=id_categoria)
        flash('Se ha eliminado la categoria correctamente', 'error')
        return redirect(url_for('muro'))
    else:
        return redirect(url_for('inicio')) 
    
@app.route("/ajaxmenu", methods=["GET", "POST"])
def ajaxmenu():
    cursor = db.cursor()
    if request.method=='POST':
        idcategoria=request.form['idcategoria']
        id=request.form['id']
        rol=request.form['rol']
        cursor.execute("SELECT * FROM categorias WHERE id_categoria= "+idcategoria)
        categoria = cursor.fetchall()
    return jsonify({'htmlresponse': render_template('menu/responsecategoria.html', categoria=categoria, rol=rol, id=id)})

@app.route("/restorePassword", methods=["GET", "POST"])
def restorePassword():
    if request.method == 'POST':
        email = request.form['email']  
        if restablecerPassword.restablecer(email):
            return redirect(url_for('inicio'))
    return render_template("/correo_restablecer_contraseña/correoRestablecerPassword.html")   

@app.get("/cambiarPass/<id>/<token>")
def cambiarPass(id, token):
    if confirmarToken.validateIdToken(id, token) == True:
        return render_template("/restablecer_contraseña/restablecer_password.html", id=id)
    else:
        return redirect(url_for('inicio_session'))

@app.post("/newPassword")
def newPassword():
    if request.method == 'POST':
        id = request.form.get("id")
        session['token'] = id
        password = request.form.get("password")
        password_verificacion = request.form.get("password_verificacion")
        if password == password_verificacion:
            if confirmarToken.validateToken(id):
                cambiarPassword.cambiar(id, password)
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

@app.route("/traductor_inga", methods=["GET", "POST"])
def traductor_inga():
    return render_template("/traductor/traductor_inga.html")

@app.route("/traduccion", methods=["GET", "POST"])
def traduccion():
    if request.method == 'POST':
        texto_entrada = request.form['texto_entrada']
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM palabras_espanol WHERE palabra_espanol='" +texto_entrada+"' ")
        a = cursor.fetchone()
        if a == None:
            a = "¡Esta palabra está en proceso, todavía no tiene traducción! 😊"
        else:
            a = a['palabra a palabra']
        db.commit()
        texto_salida = a
        return render_template("/traductor/traductor.html", texto_salida=texto_salida, texto_entrada=texto_entrada)
    return render_template("/traductor/traductor.html")

@app.route("/traduccion_inga", methods=["GET", "POST"])
def traduccion_inga():
    if request.method == 'POST':
        texto_entrada = request.form['texto_entrada']
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM palabras_inga WHERE palabra_inga='" +texto_entrada+"' ")
        a = cursor.fetchone()
        if a == None:
            a = "¡Esta palabra está en proceso, todavía no tiene traducción! 😊"
        else:
            a = a['traduccion']
        db.commit()
        texto_salida = a
        return render_template("/traductor/traductor_inga.html", texto_salida=texto_salida, texto_entrada=texto_entrada)
    return render_template("/traductor/traductor_inga.html")

@app.route("/voz_inga", methods=["GET", "POST"])
def audio_inga():
    texto_entrada = request.form['texto_entrada']
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM palabras_inga WHERE palabra_inga='" +texto_entrada+"' ")
    a = cursor.fetchone()
    if a == None:
        a = "¡Esta palabra está en proceso, todavía no tiene traducción! 😊"
    else:
        a = a['traduccion']
    db.commit()
    texto_salida = a
    voz_traductor.voz_texto(texto_salida)
    return render_template("/traductor/traductor_inga.html", texto_entrada=texto_entrada, texto_salida=texto_salida)

@app.route("/voz", methods=["GET", "POST"])
def audio():
    texto_entrada = request.form['texto_entrada']
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM palabras_espanol WHERE palabra_espanol='" +texto_entrada+"' ")
    a = cursor.fetchone()
    if a == None:
        a = "¡Esta palabra está en proceso, todavía no tiene traducción! 😊"
    else:
        a = a['palabra a palabra']
    db.commit()
    texto_salida = a
    voz_traductor.voz_texto(texto_salida)
    return render_template("/traductor/traductor.html", texto_entrada=texto_entrada, texto_salida=texto_salida)

@app.route("/crearFrase/<string:id>/<string:nombre>", methods=["GET", "POST"])
def crear_frase(id, nombre):
    if request.method == 'GET':
        return render_template('/menu/categorias.html')

    if request.method == 'POST':
        frase = request.form.get('frase')
        if frase == "":
            flash("El campo frase esta vacio", "error")
            return redirect(url_for('frases', id=id, nombre=nombre))
        traduccion = request.form.get('traduccion')
        if traduccion == "":
            flash("El campo traduccion esta vacio", "error")
            return redirect(url_for('frases', id=id, nombre=nombre))
        id_usuario = session['id_usuario']
        imagen = request.files.get('imagen')
        resultado = existeCategoria.existe(frase)
        if resultado:
            flash("Ya existe esta frase", "error")
            return redirect(url_for('frases', id=id, nombre=nombre))
        img = userModel.nombreImagen(imagen)
        crearFrase.crear(id_categoria=id, frase=frase,traduccion=traduccion, imagen=img, id_usuario=id_usuario)
        imagen.save('./static/img/frases_categoria/'+str(img))
        flash("La frase '"+frase+"' estara en verificacion ", 'verificacion')
    return redirect(url_for('frases', id=id, nombre=nombre))

@app.route('/editarFrase/<string:id_frase>/<string:id>/<string:nombre>', methods=['GET', 'POST'])
def editar_frase(id_frase, id, nombre):
    if autenticacionController.vericarAutenticacion():
        frase = request.form['frase']
        traduccion = request.form['traduccion']
        imagen = request.files['imagen']
        if imagen:
            nombreImagen = userModel.nombreImagen(imagen)
            imagenn = nombreImagen
            imagen.save('./static/img/frases_categoria/'+nombreImagen)
        else:
            imagenn = None
        userModel.editarFrase(frase=frase, traduccion=traduccion, imagenn=imagenn, id=id_frase)
        flash('Se ha editado la frase correctamente','bueno')
        return redirect(url_for('frases', id=id, nombre=nombre))
    else:
        return redirect(url_for('inicio'))

@app.route('/eliminarFrase/<string:id_frase>/<string:id>/<string:nombre>', methods=['GET', 'POST'])
def eliminar_frase(id_frase, id, nombre):
    if autenticacionController.vericarAutenticacion(): 
        userModel.eliminarFrase(id_frase=id_frase)
        flash('Se ha eliminado la frase correctamente', 'error')
        return redirect(url_for('frases', id=id, nombre=nombre))
    else:
        return redirect(url_for('inicio'))    

@app.route('/audioFrase/<string:id_frase>/<string:id>/<string:nombre>', methods=['GET', 'POST'])
def audio_frase(id_frase, id, nombre):
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM contribucciones WHERE id_contribuccion='" +id_frase+"' ")
    frase=cursor.fetchone()
    b=frase['frases-audios']
    voz_traductor.reproducir_audio('C:/Users/shayd\OneDrive/Estudio\SEMESTRE 6/PRACTICAS EMPRESARIALES/PRACTICAS/Traductor_Practicas/static/Audio/Inga/'+b)
    return redirect(url_for('frases', id=id, nombre=nombre))

@app.route("/ajaxfile", methods=["GET", "POST"])
def ajaxfile():
    cursor = db.cursor()
    if request.method=='POST':
        fraseid=request.form['fraseid']
        id=request.form['id']
        nombre=request.form['nombre']
        cursor.execute(
            "SELECT * FROM contribucciones WHERE id_contribuccion= "+fraseid)
        frase = cursor.fetchall()
    return jsonify({'htmlresponse': render_template('menu/responsefrase.html', frase=frase, nombre=nombre, id=id)})

@app.route("/verificacionContribuyente", methods=["GET", "POST"])
def verificacionContribuyente():
    cursor = db.cursor()
    if autenticacionController.vericarAutenticacion():
        name = session['name']
        rol = session['rol']
        cursor.execute("""
            SELECT 
                `contribucciones`.`id_contribuccion`,
                `usuarios`.`nombre`,
                `contribucciones`.`frase_español`,
                `contribucciones`.`traduccion`,
                `categorias`.`nombre_categoria`,
                `contribucciones`.`imagen`,
                `contribucciones`.`confirmacion`
            FROM `traductor`.`contribucciones`
                INNER JOIN `traductor`.`categorias`
                    ON (   `contribucciones`.`id_categoria` = `categorias`.`id_categoria`
                    )
                INNER JOIN `traductor`.`usuarios`
                    ON (
                    `contribucciones`.`id_usuario` = `usuarios`.`id_usuario`
                    )
            WHERE contribucciones.`confirmacion`='No'
        """)
        frases_categorias = cursor.fetchall()
        return render_template("menu/verificacionContribucciones.html", name=name, rol=rol, frases_categoria=frases_categorias)
    else:
        return redirect(url_for('inicio'))
    
@app.route("/verificacionFrase/<string:id>", methods=["GET", "POST"])
def verificar(id):
    cursor = db.cursor()
    if autenticacionController.vericarAutenticacion():
        userModel.verificarFrase(id_frase=id)
        flash("La frase ha sido confirmada", 'bueno')
        return redirect(url_for('verificacionContribuyente'))
    else:
        return redirect(url_for('inicio'))
    db.commit()
 
@app.route("/perfil/", methods=["GET", "POST"])
def perfil():
    return render_template("/menu/perfil.html")

@app.route("/calificativo/<string:id_usuario>", methods=["GET", "POST"])
def calificativo(id_usuario):
    cursor = db.cursor()
    cursor.execute("""
    SELECT pi.id, pi.palabra_inga, pi.traduccion, CONCAT(COALESCE(SUM(cr.bien), 0), '') AS bien, CONCAT(COALESCE(SUM(cr.mal), 0), '') AS mal
    FROM palabras_inga AS PI
    LEFT JOIN calificativo_reacciones AS cr ON pi.id = cr.id_palabra_inga
    GROUP BY pi.id, pi.palabra_inga, pi.traduccion ORDER BY pi.`id` ASC LIMIT 20;
    """)
    palabras = cursor.fetchall()
    return render_template("/menu/calificativo.html", palabras=palabras, id_usuario=id_usuario)

@app.route('/bien/<string:id>/<string:id_usuario>', methods=["GET", "POST"])
def bien(id, id_usuario):
    cursor = db.cursor()
    cursor.execute("SELECT * FROM calificativo_reacciones WHERE id_palabra_inga = "+id+" AND id_usuario="+id_usuario)
    verificacion=cursor.fetchone()
    print(verificacion)
    if verificacion==None:
        cursor.execute("INSERT calificativo_reacciones(id_palabra_inga, id_usuario, bien) VALUES  ("+id+", "+id_usuario+", bien + 1)") 
        db.commit()
        return redirect(url_for("calificativo", id_usuario=id_usuario))
    else:    
        if verificacion[3]=="0" and verificacion[4]=="0":
            cursor.execute("UPDATE calificativo_reacciones SET bien = bien + 1 WHERE id_palabra_inga = "+id+" AND id_usuario = "+id_usuario)
            db.commit()
        if verificacion[3]=="1":
            cursor.execute("UPDATE calificativo_reacciones SET bien = bien - 1 WHERE id_palabra_inga = "+id+" AND id_usuario = "+id_usuario)  
            db.commit()
        if verificacion[4]=="1":
            cursor.execute("UPDATE calificativo_reacciones SET bien = bien + 1, mal = mal - 1 WHERE id_palabra_inga = "+id+" AND id_usuario = "+id_usuario)
            db.commit()
        return redirect(url_for("calificativo", id_usuario=id_usuario))

@app.route('/mal/<string:id>/<string:id_usuario>', methods=["GET", "POST"])
def mal(id, id_usuario):
    cursor = db.cursor()
    cursor.execute("SELECT * FROM calificativo_reacciones WHERE id_palabra_inga = "+id+" AND id_usuario="+id_usuario)
    verificacion=cursor.fetchone()
    if verificacion==None:
        print("aa")
        cursor.execute("INSERT calificativo_reacciones(id_palabra_inga, id_usuario, mal) VALUES  ("+id+", "+id_usuario+", mal + 1)")  
        db.commit()
        return redirect(url_for("calificativo", id_usuario=id_usuario))
    else:
        print(verificacion)
        if verificacion[4]=="0" and verificacion[3]=="0":
            cursor.execute("UPDATE calificativo_reacciones SET mal = mal + 1 WHERE id_palabra_inga = "+id+" AND id_usuario = "+id_usuario)
            db.commit()
        if verificacion[4]=="1":
            sql="UPDATE calificativo_reacciones SET mal = mal - 1 WHERE id_palabra_inga = "+id+" AND id_usuario = "+id_usuario
            print(sql)
            cursor.execute(sql) 
            db.commit() 
        if verificacion[3]=="1":
            cursor.execute("UPDATE calificativo_reacciones SET bien = bien - 1, mal = mal + 1 WHERE id_palabra_inga = "+id+" AND id_usuario = "+id_usuario)
            db.commit()  
    return redirect(url_for("calificativo", id_usuario=id_usuario))

@app.route("/responcecalificativo/<string:id>/<int:id_usuario>", methods=["GET", "POST"])
def responcecalificativo(id, id_usuario):
    cursor = db.cursor()
    cursor.execute(""" 
    SELECT calificativo_comentarios.`id_palabras_inga`, palabras_inga.`palabra_inga`, palabras_inga.`traduccion`
    FROM calificativo_comentarios 
    JOIN palabras_inga ON calificativo_comentarios.`id_palabras_inga` = palabras_inga.`id`
    WHERE calificativo_comentarios.`id_palabras_inga`=
    """+id)
    traduccion = cursor.fetchone()
    cursor.execute(""" 
    SELECT id_calificativo_comentario, palabras_inga.`palabra_inga`, palabras_inga.`traduccion`, usuarios.`nombre`, comentario, usuarios.`id_usuario`
    FROM calificativo_comentarios 
    JOIN palabras_inga ON calificativo_comentarios.`id_palabras_inga` = palabras_inga.`id`
    JOIN usuarios ON calificativo_comentarios.`id_usuario` = usuarios.`id_usuario`
    WHERE calificativo_comentarios.`id_palabras_inga`=
    """+id )
    palabras = cursor.fetchall()
    
    return render_template("/menu/responcecalificativo.html", palabras=palabras,  traduccion=traduccion, id_usuario=id_usuario)

@app.route("/eliminarComentario/<string:id>/<string:id_usuario>", methods=["GET", "POST"])
def eliminarComentario(id, id_usuario):
    cursor = db.cursor()
    cursor.execute("DELETE FROM calificativo_comentarios WHERE id_calificativo_comentario = "+id+" AND id_usuario = "+id_usuario)
    db.commit()    
    flash("Se ha eliminado un comentario", 'error')
    return redirect(url_for("calificativo", id_usuario=id_usuario))

@app.route("/comentario/<string:id>", methods=["GET", "POST"])
def comentario(id):
    if request.method == 'GET':
        id_usuario = session['id_usuario']
        return redirect(url_for('calificativo', id_usuario=id_usuario))

    if request.method == 'POST':
        comentario = request.form.get('comentario')
        id_usuario = session['id_usuario']
        if comentario == "":
            flash("El campo esta vacio", "error")
            return redirect(url_for('calificativo', id_usuario=id_usuario))
        crearComentario.crear(comentario=comentario, id_usuario=id_usuario, id=id)
        flash("comentario enviado", 'bueno')
    return redirect(url_for('calificativo', id_usuario=id_usuario))

@app.route("/contacto", methods=["GET", "POST"])
def contacto():
    return render_template("/informacion/contacto.html")

@app.route("/privacidad", methods=["GET", "POST"])
def privacidad():
    return render_template("/informacion/privacidad.html")

@app.route("/ayuda", methods=["GET", "POST"])
def ayuda():
    return render_template("/informacion/ayuda.html")


app.run(debug=True)
