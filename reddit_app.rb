
# Display posts from a given subreddit (like /r/programming, the full API url is https://www.reddit.com/r/programming/.json)
# The user can enter a number to see the comments for a given post
# The user can enter `q` to exit the program

require 'unirest'

system "clear"

posts = Unirest.get("https://www.reddit.com/r/programming/.json")
input = gets.chomp


puts posts["permalink"]