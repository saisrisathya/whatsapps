HELP_MESSAGE = "\n\
## WhatsApp Help for Chennai Relief ##\n\
\n\
In order to receive support, kindly send\n\
\n\
#food <location>\n\
#water <location>\n\
#money <location>\n\
#transport <location>\n\
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
\n\
PS: Location is optional\n\n\
PPS: This number can be reached only via WhatsApp."

class HelpBot():
  def __init__(self):
    pass

  def execute(self):
  	return HELP_MESSAGE
    # return {"text" : HELP_MESSAGE}
