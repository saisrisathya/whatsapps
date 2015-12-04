from flask import render_template, Flask
import datetime
import MySQLdb

app = Flask(__name__)


##################################################

class Singleton(type):
    _instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]

class DB(object):
    __metaclass__ = Singleton
    db = MySQLdb.connect('localhost', 'root', '', 'rescue_mission')
    cursor = db.cursor()

    def get_all_chats(self):
      DB.cursor.execute("SELECT phone, count(*) from chat GROUP BY phone")
      result = DB.cursor.fetchall()
      DB.cursor.execute("SELECT count(*) from chat")
      result2 = DB.cursor.fetchall()
      return result, result2

#######################################################


db = DB()

@app.route('/')
def index():
    result, count = db.get_all_chats()
    return render_template('index.html', data=result, count=count[0][0])

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)