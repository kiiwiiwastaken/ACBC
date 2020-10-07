-- This is a list of all the bugs in Animal Crossing: New Horizons.
local prices ={
    ['Agrias Butterfly'] = 3000,
    ['Ant'] = 80,
    ['Atlas Moth'] = 3000,
    ['Bagworm'] = 600,
    ['Banded Dragonfly'] = 4500,
    ['Bell Cricket'] = 430,
    ['Blue Weevil Beetle'] = 800,
    ['Brown Cicada'] = 250,
    ['Centipede'] = 300,
    ['Cicada Shell'] = 10,
    ['Citrus Long-Horned Beetle'] = 350,
    ['Common Bluebottle'] = 300,
    ['Common Butterfly'] = 160,
    ['Cricket'] = 130,
    ['Cyclommatus Stag'] = 8000,
    ['Damselfly'] = 500,
    ['Darner Dragonfly'] = 230,
    ['Diving Beetle'] = 800,
    ['Drone Beetle'] = 200,
    ['Dung Beetle'] = 3000,
    ['Earth-Boring Dung Beetle'] = 300,
    ['Emperor Butterfly'] = 4000,
    ['Evening Cicada'] = 550,
    ['Firefly'] = 300,
    ['Flea'] = 70,
    ['Fly'] = 60,
    ['Giant Cicada'] = 500,
    ['Giant Stag'] = 10000,
    ['Giant Water Bug'] = 2000,
    ['Giraffe Stag'] = 12000,
    ['Golden Stag'] = 12000,
    ['Goliath Beetle'] = 8000,
    ['Grasshopper'] = 160,
    ['Great Purple Emperor'] = 3000,
    ['Hermit Crab'] = 1000,
    ['Honeybee'] = 200,
    ['Horned Atlas'] = 8000,
    ['Horned Dynastid'] = 1350,
    ['Horned Elephant'] = 8000,
    ['Horned Hercules'] = 12000,
    ['Jewel Beetle'] = 2400,
    ['Ladybug'] = 200,
    ['Long Locust'] = 200,
    ['Madagascan Sunset Moth'] = 2500,
    ['Man-Faced Stink Bug'] = 1000,
    ['Mantis'] = 430,
    ['Migratory Locust'] = 600,
    ['Miyama Stag'] = 1000,
    ['Mole Cricket'] = 500,
    ['Monarch Butterfly'] = 140,
    ['Mosquito'] = 130,
    ['Moth'] = 130,
    ['Orchid Mantis'] = 2400,
    ['Paper Kite Butterfly'] = 1000,
    ['Peacock Butterfly'] = 2500,
    ['Pill Bug'] = 250,
    ['Pondskater'] = 130,
    ['Queen Alexandra\'s Birdwing'] = 4000,
    ['Rainbow Stag'] = 6000,
    ['Rajah Brooke\'s Birdwing'] = 2500,
    ['Red Dragonfly'] = 180,
    ['Rice Grasshopper'] = 160,
    ['Robust Cicada'] = 300,
    ['Rosalia Batesi Beetle'] = 3000,
    ['Saw Stag'] = 2000,
    ['Scarab Beetle'] = 10000,
    ['Scorpion'] = 8000,
    ['Snail'] = 250,
    ['Spider'] = 600,
    ['Stinkbug'] = 120,
    ['Tarantula'] = 8000,
    ['Tiger Beetle'] = 1500,
    ['Tiger Butterfly'] = 240,
    ['Violin Beetle'] = 450,
    ['Walker Cicada'] = 400,
    ['Walking Leaf'] = 600,
    ['Walking Stick'] = 600,
    ['Wasp'] = 2500,
    ['Warf Roach'] = 200,
    ['Yellow Butterfly'] = 160
}

-- Asks user how many bugs they are selling.
print("\nHow many bugs are you selling?")
local num1 = tonumber(io.read()) -- tonumber() makes the number not a string.

-- Asks if you are selling to Flick
print("\nAre you selling to Flick? [Yes/No]")
local flick = io.read()

-- Asks if you are selling to the Drop-Off box in from of the Nookling's store.
print("\nAre you selling to Nookling's Drop-Off box? [Yes/No]")
local nook = io.read()

-- Asks user what bug they are selling.
print("\nWhat bug are you selling?")
local bug = prices[io.read()]

-- Prints out the amount of bells you will recieve!
if flick:lower() == "no" and nook:lower() == "no" then
	print("You will earn " .. num1*bug .. " bells for selling to the Nooklings!\n")
elseif flick:lower() == "yes" and nook:lower() == "no" then
	print("You will earn " .. num1*2*bug .. " bells for selling to Flick!\n")
elseif flick:lower() == "no" and nook:lower() == "yes" then
	print("You will earn " .. num1*0.8*bug .. " bells for selling to Nookling's Drop-Off box!\n")
else
	print("You can't sell to both Flick and the Nookling\'s Drop-Off box lol\n")
end
os.exit()
