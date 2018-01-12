require 'unirest' 

response = Unirest.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json') 
employees = response.body 

employees.each do |employee|
puts "Name: #{employee["name"]}"
puts "Tittle: #{employee["job_tittles"]}"
puts ""

end 
