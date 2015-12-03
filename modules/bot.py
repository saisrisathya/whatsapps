from HelpBot import HelpBot
from RescueBot import RescueBot
import base64
import urllib
import os
import hashlib
START_DELIMITER_SYMBOL = '#'

class Bot():

  def __init__(self):
    self.name = None
  def message(self, content):
    msg = "Help is coming"
    if content[0] == START_DELIMITER_SYMBOL:
      parts = content[1:].split()
      parts = [ part.lower() for part in parts]
      keyword = parts[0]
      try:
        command = parts[1]
      except:
          command = ['']

      try:
        params = parts[2:]
      except:
        params = ['']


      if keyword == 'help':
        helpbot = HelpBot()
        result = helpbot.execute()
      elif keyword == 'location':
        rescuebot = RescueBot()
        result = rescuebot.myLocation(command, params)

      for r in result:
        if r=='text':
          msg = str(result[r])
        if r == 'error':
          msg = "There are some errors with your request. Please try again after some time."
    return msg
