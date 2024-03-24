from flask import Flask
import pymysql

app = Flask(__name__)



hostname = '10.10.10.201'
user = 'formation'
password = '12345'

db = pymysql.connections.Connection(
    host=hostname,
    user=user,
    password=password,
    database="cytech"
)

cursor = db.cursor()

@app.route("/")
def get_name():

    cursor.execute(''' SELECT name FROM users LIMIT 1 ''')
    result = cursor.fetchone()
    name = result[0]

    return {"name": name}
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
