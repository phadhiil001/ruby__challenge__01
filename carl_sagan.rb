=begin

  Name: Fadlullah Jamiu-Imam
  Course: Agile Full Stack Web Development.
  Date: 12th May, 2024

=end


# QUESTION 1

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]
# We are a way for the cosmos to know itself.

puts"#{carl[:words][2].capitalize()} #{sagan[0][:are]} #{sagan[0]["A"]} #{sagan[1]["waaaaaay"]} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"


# QUESTION 2
 ghosts = [
    {:name => 'Inky', :age => '4', :loves => 'reindeers', :net_worth => '25'},
    {:name => 'Pinky', :age => '5', :loves => 'garden tools', :net_worth => '14'},
    {:name => 'Blinky', :age => '7', :loves => 'ninjas', :net_worth => '18.03'},
    {:name => 'Clyde', :age => '6', :loves => 'yarn', :net_worth => '0'},
 ]

 # The following snippet of code should be able to process your ghosts array and generate the above italicized text.
 ghosts.each do |ghost|
    ghost_info = "#{ghost[:name]} is #{ghost[:age]} years old, "
    ghost_info += "loves #{ghost[:loves]} and "
    ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
    puts ghost_info
 end


# QUESTION 3

require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
pp dog_breeds # pp stands for pretty print.


dog_breeds['message'].each {
    |breed, sub_breeds|
    puts "* #{breed.capitalize}"

    sub_breeds.each {
        |sub_breed|
        puts "  * #{sub_breed.capitalize}"
    }
}


