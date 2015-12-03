HELP_MESSAGE = """
## WhatsApp Help for Chennai Relief ##

List of help commands

#help - to get this message
#food - to get list of people providing food

Send your Location to get instant help from someone near you. We will try to connect that person to you.

Please note that this number can be reached only via WhatsApp.
"""

class HelpBot():
  def __init__(self):
    pass

  def execute(self):
    return {"text" : HELP_MESSAGE}
