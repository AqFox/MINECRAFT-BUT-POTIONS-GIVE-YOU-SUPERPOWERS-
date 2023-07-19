execute if block ~ ~ ~ #aquilix:furnaces[lit=false] run playsound minecraft:entity.blaze.shoot block @a

execute store result score burnTime timer.inferno run data get block ~ ~ ~ BurnTime
execute if score burnTime timer.inferno matches ..300 run data modify block ~ ~ ~ BurnTime set value 200s

data modify storage aquilix:inferno Furnace set from block ~ ~ ~

execute if block ~ ~ ~ minecraft:furnace[lit=false] run function aquilix:inferno/scan/furnace
execute if block ~ ~ ~ minecraft:blast_furnace[lit=false] run function aquilix:inferno/scan/blast_furnace
execute if block ~ ~ ~ minecraft:smoker[lit=false] run function aquilix:inferno/scan/smoker

data modify block ~ ~ ~ CookTime set from storage aquilix:inferno Furnace.CookTime
data modify block ~ ~ ~ BurnTime set from storage aquilix:inferno Furnace.BurnTime
data modify block ~ ~ ~ CookTimeTotal set from storage aquilix:inferno Furnace.CookTimeTotal
data modify block ~ ~ ~ Items set from storage aquilix:inferno Furnace.Items
data modify block ~ ~ ~ RecipesUsed set from storage aquilix:inferno Furnace.RecipesUsed

