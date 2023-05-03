import mysql.connector
from config import settings
from dotenv import load_dotenv
import os
#sirve para leer variables de entorno
#Carga de archivo .env a las variables de entorno
load_dotenv()
db = mysql.connector.connect(
    host= os.environ.get('MYSQL_HOSTNAME'),
    user= os.environ.get('MYSQL_USERNAME'),
    password= os.environ.get('MYSQL_PASSWORD'),
    port= os.environ.get('MYSQL_PORT'),
    database= os.environ.get('MYSQL_DATABASE'),
    buffered=True
)
db.autocommit = True
