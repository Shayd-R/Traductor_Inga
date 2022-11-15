import mysql.connector
from config import settings

db = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    port=3306,
    database='traductor',
    buffered=True
)
db.autocommit = True