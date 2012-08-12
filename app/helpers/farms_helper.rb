module FarmsHelper

def getcoordf(zip)
  url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{zip}&sensor=false"
  response = open(url).read
  json_response = JSON.parse(response)
  lat = json_response["results"].first["geometry"]["location"]["lat"]
  lng = json_response["results"].first["geometry"]["location"]["lng"]
	return [lat,lng]
end


end



 #  url = "http://maps.googleapis.com/maps/api/geocode/json?address=60601&sensor=false"
 #  response = open(url).read
 #  json_response = JSON.parse(response)
 #  lat = json_response["results"].first["geometry"]["location"]["lat"]
 #  lng = json_response["results"].first["geometry"]["location"]["lng"]
 # (z,x) = [lat,lng]