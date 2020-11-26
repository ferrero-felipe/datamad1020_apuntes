from sqlalchemy import create_engine
from dotenv import load_dotenv
import os
load_dotenv()

user = os.getenv("SQLUSER")
password = os.getenv("SQLPASS")

mysql_url = f'mysql+mysqldb://{user}:{password}@localhost'
engine = create_engine(mysql_url)
conn = engine.connect()

def get_table(name):
    query = f"SELECT * FROM {name};"
    res = conn.execute(query)
    return res