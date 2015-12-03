import MySQLdb
import time

class Singleton(type):
    _instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]

class DB(object):
    __metaclass__ = Singleton
    db = MySQLdb.connect('localhost', 'root', '', 'rescue_mission')

    def add_chat(self, phone, message):
    	phone, message = str(phone), str(message)
    	DB.db.cursor().execute('INSERT INTO chat VALUES (' + '"' + phone + '"' + ', "' + message + '", ' + str(int(time.time())) + ')')

    def stuff_needed(self, table, phone, location):
    	phone, location = str(phone), str(location) if location else ''
    	if phone and len(phone) > 0:
    		DB.db.cursor().execute('INSERT INTO ' + table + ' VALUES ("' + phone + '", ' + str(int(time.time())) + ', "' + location + '")')
    		return True
    	return False

    def stuff_available(self, table, phone, location):
    	phone, location = self.sanitizeInfo(phone, location)
    	if phone and len(phone) > 0 and location and len(location) > 0:
    		self.cursor.execute('INSERT INTO ' + table + ' VALUES (' + phone + ', ' + location + ')')
    		return True
    	return False

    def add_food_needed(self, phone, location):
    	return self.stuff_needed('food_needed', phone, location)

    def add_water_needed(self, phone, location):
    	return self.stuff_needed('water_needed', phone, location)

    def add_transport_needed(self, phone, location):
    	return self.stuff_needed('transport_needed', phone, location)

    def add_money_needed(self, phone, location):
    	return self.stuff_needed('food_needed', phone, location)

    def add_water_available(self, phone, location):
    	return self.stuff_needed('water_available', phone, location)

    def add_transport_available(self, phone, location):
    	return self.stuff_needed('transport_available', phone, location)

    def add_money_available(self, phone, location):
    	return self.stuff_needed('money_available', phone, location)
    