HELP_MESSAGE = "\
## WhatsApp Help for Chennai Relief ##\
\
In order to receive support, kindly send\
\
#food <location>\
#water <location>\
#money <location>\
#transport <location>\
\
In order to provide support, kindly send\
\
#support food <location>\
#support water <location>\
#support money <location>\
#support transport <location>\
\
Send your Location to get instant help from someone near you. We will try to connect that person to you.\
\
Note: This number can be reached only via WhatsApp.\
"

class HelpBot():
  def __init__(self):
    pass

  def execute(self):
    return {"text" : HELP_MESSAGE}
