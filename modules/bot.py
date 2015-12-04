from RescueBot import RescueBot
from db import DB
import urllib2
import json

HELP_MESSAGE = "\n\
## WhatsApp Help for Chennai Relief ##\n\
\n\
In order to receive support, kindly send\n\
\n\
#food\n\
#food <location> eg. #food adayar\n\
#water\n\
#water <location> eg. #water adayar\n\
#transport\n\
#transport <location> eg. #transport adayar\n\
#money\n\
#money <location> eg. #money adayar\n\
\n\
In order to provide support, kindly send\n\
\n\
#support food <location>\n\
#support water <location>\n\
#support money <location>\n\
#support transport <location>\n\
\n\
Send your Location to get instant help from someone near you. We will try to connect that person to you.\n\
\n\
You can tell us how to improve by sending feedback and if you like the service\n\
#feedback <message>\n\
#like\n\
\n\n\
PS: Location is optional\n\
PPS: This number can be reached only via WhatsApp."

class Bot():

  def __init__(self):
    self.name = None
    self.db = DB()

  def message(self, content, phone):
    try:
      self.db.add_chat(phone, content)

      if content[0] != '#':
          return ''

      content = content[1:]
      parts = content.lower().strip().split(' ')
      parts = [part.strip() for part in parts]
      
      if len(parts[0]) > 0:
        support_type = parts[0]
      else:
        return HELP_MESSAGE

      if support_type == 'help':
        return HELP_MESSAGE

      parts = parts[1:]
      location = ' '.join(parts) if len(parts) > 0 else ''

      if support_type == 'feedback':
        self.db.add_feedback(phone, content)
        return 'Thank you for the feedback. We will try and serve you better'
      if support_type == 'like':
        self.db.add_like(phone)
        return '+1'
      if support_type == 'location':
        self.db.add_sos(phone, parts[0].split(' ')[0])
        return 'Noted your location. We\'ll notify someone in your location who can help'
      if support_type == 'food':
        self.db.add_food_needed(phone, location)
        print 'FOOD', location
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
        if len(parts) < 1:
          return "Please tell us which kind of support you are willing to provide and where. For example: #support food adayar"
        support_type = parts[0]
        location = ' '.join(parts[1:]) if len(parts) > 1 else ''
        thank_you_response = "Thank you for registering, we will let you know when someone needs your help"

        if support_type == 'food':
          self.db.add_food_available(phone, location)
          return thank_you_response
        elif support_type == 'water':
          self.db.add_water_available(phone, location)
          return thank_you_response
        elif support_type == 'transport':
          self.db.add_transport_available(phone, location)
          return thank_you_response
        elif support_type == 'money':
          self.db.add_money_available(phone, location)
          return thank_you_response

      return ''
    except:
      return ''

  def get_resources(self, support_type, location):
    jsonObject = json.loads(urllib2.urlopen('http://178.62.32.86:1337/data/' + support_type + '/').read())
    returnString = 'You can contact the following people for help \n\n'
    for obj in jsonObject:
      returnString += obj['name'] + '\n'
      returnString += obj['phone'] + '\n'
      returnString += obj['location'] + '\n\n'
    return returnString
