module RestaurantsHelper

def getcoordr(zip)
  url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{zip}&sensor=false"
  response = open(url).read
  json_response = JSON.parse(response)
  lat = json_response["results"].first["geometry"]["location"]["lat"]
  lng = json_response["results"].first["geometry"]["location"]["lng"]
	return [lat,lng]
end


end
