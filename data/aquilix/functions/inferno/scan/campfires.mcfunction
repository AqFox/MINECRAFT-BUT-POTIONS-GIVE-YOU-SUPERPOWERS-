playsound minecraft:entity.blaze.shoot block @a

data modify storage aquilix:inferno Campfire set from block ~ ~ ~

execute if block ~ ~ ~ minecraft:campfire run function aquilix:inferno/scan/campfire
execute if block ~ ~ ~ minecraft:soul_campfire run function aquilix:inferno/scan/soul_campfire

data modify block ~ ~ ~ Items set from storage aquilix:inferno Campfire.Items
data modify block ~ ~ ~ CookingTimes set from storage aquilix:inferno Campfire.CookingTimes
data modify block ~ ~ ~ CookingTotalTimes set from storage aquilix:inferno Campfire.CookingTotalTimes
