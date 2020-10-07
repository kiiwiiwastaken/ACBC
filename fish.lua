-- This is a list of all fish in Animal Crossing: new Horizons. I can probably slim it down due to duplicate amounts, but I have no fucking clue on how to do it right now
local price ={
    ['Anchovy'] = 200,
    ['Angelfish'] = 3000,
    ['Arapaima'] = 10000,
    ['Arowana'] = 10000,
    ['Barred Knifejaw'] = 5000,
    ['Barreleye'] = 15000,
    ['Betta'] = 2500,
    ['Bitterling'] = 900,
    ['Black Bass'] = 400,
    ['Blowfish'] = 5000,
    ['Blue Marlin'] = 10000,
    ['Bluegill'] = 180,
    ['Butterfly Fish'] = 1000,
    ['Carp'] = 300,
    ['Catfish'] = 800,
    ['Char'] = 3800,
    ['Cherry Salmon'] = 1000,
    ['Clown Fish'] = 650,
    ['Coelacanth'] = 15000,
    ['Crawfish'] = 200,
    ['Crucian Carp'] = 160,
    ['Dab'] = 300,
    ['Dace'] = 240,
    ['Dorado'] = 15000,
    ['Football Fish'] = 2500,
    ['Freshwater Goby'] = 400,
    ['Frog'] = 120,
    ['Gar'] = 6000,
    ['Giant Snakehead'] = 5500,
    ['Giant Trevally'] = 4500,
    ['Golden Trout'] = 15000,
    ['Goldfish'] = 1300,
    ['Great White Shark'] = 15000,
    ['Guppy'] = 1300,
    ['Hammerhead Shark'] = 8000,
    ['Horse Mackerel'] = 150,
    ['Killifish'] = 300,
    ['King Salmon'] = 1800,
    ['Koi'] = 4000,
    ['Loach'] = 400,
    ['Mahi-Mahi'] = 6000,
    ['Mitten Crab'] = 2000,
    ['Moray Eel'] = 2000,
    ['Napoleonfish'] = 10000,
    ['Neon Tetra'] = 500,
    ['Nibble Fish'] = 1500,
    ['Oarfish'] = 9000,
    ['Ocean Sunfish'] = 4000,
    ['Olive Flounder'] = 800,
    ['Pale Chub'] = 200,
    ['Pike'] = 1800,
    ['Piranha'] = 2500,
    ['Pond Smelt'] = 500,
    ['Pop-Eyed Goldfish'] = 1300,
    ['Puffer Fish'] = 250,
    ['Rainbowfish'] = 800,
    ['Ranchu Goldfish'] = 4500,
    ['Ray'] = 3000,
    ['Red Snapper'] = 3000,
    ['Ribbon Eel'] = 600,
    ['Saddled Bichir'] = 4000,
    ['Salmon'] = 700,
    ['Saw Shark'] = 12000,
    ['Sea Bass'] = 400,
    ['Sea Butterfly'] = 1000,
    ['Sea Horse'] = 1100,
    ['Snapping Turtle'] = 5000,
    ['Soft-Shelled Turtle'] = 3750,
    ['Squid'] = 500,
    ['Stringfish'] = 15000,
    ['Sturgeon'] = 10000,
    ['Suckerfish'] = 1500,
    ['Surgeonfish'] = 1000,
    ['Sweetfish'] = 900,
    ['Tadpole'] = 100,
    ['Tilapia'] = 800,
    ['Tuna'] = 7000,
    ['Whale Shark'] = 13000,
    ['Yellow Perch'] = 300,
    ['Zebra Turkeyfish'] = 500
}

-- Asks how many fish you are selling and stores it as variable `num1`
print("\nHow many fish are you selling?")
local num1 = tonumber(io.read()) -- tonumber() makes the number not a string.

-- Asks if you are selling to CJ
print("\nAre you selling to CJ? [Yes/No]")
local cj = io.read()

-- Asks if you are selling to the Drop-Off box in front of the Nookling's store.
print("\nAre you selling to Nookling's Drop-Off box? [Yes/No]")
local nook = io.read()

-- Asks what fish you are selling and stores it as `fish`
print("\nWhat kind of fish are you selling?")
local fish = price[io.read()]

-- Outputs the amount of bells you will recieve!
if cj:lower() == 'no' and nook:lower() == 'no' then
	print("You will earn " .. num1*fish .. " bells for selling to the Nooklings!\n")
elseif cj:lower() == 'yes' and nook:lower() == 'no' then
	print("You will earn " .. num1*2*fish .. " bells for selling to CJ!\n")
elseif cj:lower() == 'no' and nook:lower() == 'yes' then
	print("You will earn " .. num1*0.8*fish .. " bells for selling to Nookling's Drop-Off box!\n")
else
	print("You can't sell to both CJ and the Drop-Off box lol")
end
os.exit()
