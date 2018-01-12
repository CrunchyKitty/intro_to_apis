

require 'unirest'

system "clear"

looking_up_words = true 

while looking_up_words

screen size  = 60 


puts
puts "=" *screen_size
puts "Dictionary app:"
puts "=" * screen_size
puts 

print " " * (screen_size/4) + "Put in a word to be defined:"
word = gets.chomp


if looking_up_words=="q"
  looking_up_words = false
else 

  definitions_response = Unirest.get("http://developer.wordnik.com/docs.html#!/word")

  definitions = definitions.body["text"]


  puts "DEFINITIONS"
  puts "="* screen_size
  definitions.each.with_index do |defintion,index|
    puts "#{index + 1}. #{definiton ["text"]}
    puts 
   end  


  top_example_response = Unirest.get("http://developer.wordnik.com/docs.html#!/word/getDefinitions_get_2")


  pronunciation_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/cow/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")


  pronunciation = response.body

  puts "PRONUNCIATIONS"
  puts "-" * screen_size
  first_pronunciation = pronunciations [0]
  if first_pronunciation
    puts first_pronunciation["raw"]
  end  
  # pronunciation.each do |pronunciation|
  #   puts pronunciation["raw"]
end 

puts "Thanks for looking up words with me"







