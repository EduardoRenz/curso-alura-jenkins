import mysql.connector
import os
from dotenv import load_dotenv
load_dotenv()

cnx = mysql.connector.connect(
    user=os.getenv('DB_USER'),
    password=os.getenv('DB_PASSWORD'),
    host=os.getenv('DB_HOST'),
    database=os.getenv('DB_NAME')
    )
cnx.close()