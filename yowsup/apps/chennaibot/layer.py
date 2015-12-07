from yowsup.layers.interface                           import YowInterfaceLayer, ProtocolEntityCallback
from yowsup.layers.protocol_messages.protocolentities  import TextMessageProtocolEntity
from modules.bot import Bot
class EchoLayer(YowInterfaceLayer):

    @ProtocolEntityCallback("message")
    def onMessage(self, messageProtocolEntity):

        if messageProtocolEntity.getType() == 'text':
            botResponse = chennaiBot.message(messageProtocolEntity.getBody(), str(messageProtocolEntity.getFrom(False)))
            if botResponse != "#":
                messageEntity = TextMessageProtocolEntity(botResponse, to = messageProtocolEntity.getFrom())
                self.toLower(messageEntity)
            self.onTextMessage(messageProtocolEntity)
            selfMessageEntity = TextMessageProtocolEntity(messageProtocolEntity.getBody()+" \n=====\n Number: "+messageProtocolEntity.getFrom(False) + "\n=====\nNote: This is an automatic forward", to = "919629323672@s.whatsapp.net")
            self.toLower(selfMessageEntity)
        elif messageProtocolEntity.getType() == 'media':
            if messageProtocolEntity.getMediaType() == "location":
                req = "#location " + str(messageProtocolEntity.getLatitude()) +","+ str(messageProtocolEntity.getLongitude()) + " " + str(messageProtocolEntity.getFrom(False))
                messageEntity = TextMessageProtocolEntity(chennaiBot.message(req, str(messageProtocolEntity.getFrom(False))), to = messageProtocolEntity.getFrom())
                self.toLower(messageEntity)



            self.onMediaMessage(messageProtocolEntity)




        self.toLower(messageProtocolEntity.ack())
        self.toLower(messageProtocolEntity.ack(True))


    @ProtocolEntityCallback("receipt")
    def onReceipt(self, entity):
        self.toLower(entity.ack())

    def onTextMessage(self,messageProtocolEntity):
        # just print info
        print("Echoing %s to %s" % (messageProtocolEntity.getBody(), messageProtocolEntity.getFrom(False)))

    def onMediaMessage(self, messageProtocolEntity):
        # just print info
        if messageProtocolEntity.getMediaType() == "image":
            print("Echoing image %s to %s" % (messageProtocolEntity.url, messageProtocolEntity.getFrom(False)))

        elif messageProtocolEntity.getMediaType() == "location":
            print("Echoing location (%s, %s) to %s" % (messageProtocolEntity.getLatitude(), messageProtocolEntity.getLongitude(), messageProtocolEntity.getFrom(False)))

        elif messageProtocolEntity.getMediaType() == "vcard":
            print("Echoing vcard (%s, %s) to %s" % (messageProtocolEntity.getName(), messageProtocolEntity.getCardData(), messageProtocolEntity.getFrom(False)))


chennaiBot = Bot()
