from geopy import geocoders
import csv

g_api_key = 'AIzaSyDr9RACXEeAbiWd6IbR5SImupVsXNwjEdE'
g = geocoders.GoogleV3(g_api_key)

costcos = csv.reader(open('costcos-limited.csv'), delimiter=',')
next(costcos)

print "Address, City, State, Zip Code, Latitude, Longitude"

for row in costcos:
	full_addy = row[1] + ", " + row[2] + "," + row[3] + "," + row[4]
	place, (lat, lng) = list(g.geocode(full_addy, exactly_one=False))[0]
	print full_addy + "," + str(lat) + "," + str(lng)