HELP_MESSAGE = """
## WhatsApp Help for Chennai Floods ##

List of help commands

#help - to get this message

Send your Location to get instant help from someone

"""

class HelpBot():
  def __init__(self):
    pass

  def execute(self):
    return {"text" : HELP_MESSAGE}
