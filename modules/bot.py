from HelpBot import HelpBot
from RescueBot import RescueBot
from db import DB
import urllib2
import json

class Bot():

  def __init__(self):
    self.name = None
    self.db = DB()

  def message(self, content, phone):
    if content[0] != '#':
        helpBot = HelpBot()
        return helpBot.execute()

    parts = content.lower().strip().split(' ')
    print 'sdsds', parts
    if len(parts[0]) > 0:
      support_type = parts[0][1:]
    else:
      return 'ERROR'

    parts = parts[1:]
    location = ''

    self.db.add_chat(phone, content)

    if support_type == 'food':
      self.db.add_food_needed(phone, location)
      return self.get_resources('food', location)
    elif support_type == 'water':
      self.db.add_water_needed(phone, location)
      return self.get_resources('water', location)
    elif support_type == 'transport':
      self.db.add_transport_needed(phone, location)
      return self.get_resources('transport', location)
    elif support_type == 'money':
      self.db.add_money_needed(phone, location)
      return self.get_resources('money', location)
    #
    # PEOPLE WHO WANT TO HELP
    #
    elif support_type == 'support':
      if len(parts) < 2:
        return "Please tell us which kind of support you are willing to provide and where. For example: #support food adayar"
      support_type = parts[0]
      location = ' '.join(parts[1:])
      if support_type == 'food':
        self.db.add_food_available(phone, location)
      elif support_type == 'water':
        self.db.add_water_available(phone, location)
      elif support_type == 'transport':
        self.db.add_transport_available(phone, location)
      elif support_type == 'money':
        self.db.add_money_available(phone, location)

    helpBot = HelpBot()
    print helpBot.execute()
    return helpBot.execute()

  def get_resources(self, support_type, location):
    jsonObject = json.loads(urllib2.urlopen('http://178.62.32.86:1337/data/' + support_type + '/').read())
    returnString = 'You can contact the following people for help \n\n'
    for obj in jsonObject:
      returnString += obj['name'] + '\n'
      returnString += obj['phone'] + '\n'
      returnString += obj['location'] + '\n\n'
    return returnString
