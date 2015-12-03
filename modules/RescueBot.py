import json
import requests





class RescueBot():
  def __init__(self):
    pass

  def myLocation(self, location, phone):
    return {"text" : str(location) + " - " + str(phone)}
  def food(self, phone):
    response = requests.get("http://maps.google.com/maps/api/geocode/json?sensor=false&latlng=19.02514,72.8502")
    json_data = json.loads(response.text)
    return {"text" : str(json_data['results'][0]['formatted_address'])}
