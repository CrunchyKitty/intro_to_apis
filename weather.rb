require 'unirest'

screen_size = 70

system "clear"

puts
puts "=" * screen_size
puts "Weather Brought to you by the best". center(screen_size)
puts "=" * screen_size
puts 


print " " * (screen_size/4) + "Enter a city:"
city = gets.chomp

print " " * (screen_size/4) + "Enter a state:"
state = gets.chomp

# city = gets.chomp
# state = gets.chomp 

response = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22chicago%2C%20il%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")

channel = response.body["query"]["results"]["channel"]

temp_units = channel["units"]["temperature"]

temperature = channel ["item"]["condition"]["temp"]
condition = channel ["item"]["temp"]["text"]

puts "Today in #{location_city}, #{location_state} it is #{temperature} #{temp_units}"

# p temp_units

# locationcity = channel ["location"]["city"]
# locationstate = channel ["location"]["region"]

# p location_city
# p location_state