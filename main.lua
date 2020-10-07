--[[
Animal Crossing Bell Calculator by Donnie Corbitt

This is a way to see how many bells you will earn from selling bugs or fish in Animal Crossing New Horizons, please view the README for more information (if I ever fucking update it)

This script is no more than a middleman to get users to the right script. It's nicer than having a user run fish.lua and then bugs.lua
]]

print("ANIMAL CROSSING BELL CALCULATOR V0.2")
print("Hello and thank you for using the Animal Crossing Bell Calculator! Please view \nthe README to see what all you can do with this application. If you'd like to \nsee what has been added since v0.1 please view the file named CHANGELOG.\n\n")
print("Are you selling bugs or fish?")
check = io.read()

if check:lower() == 'fish' then
  require('fish')
elseif check:lower() == 'bugs' or check:lower() == 'bug' then
  require('bugs')
else
  print("Sorry, that is not an option. Please run the script again.")
end
