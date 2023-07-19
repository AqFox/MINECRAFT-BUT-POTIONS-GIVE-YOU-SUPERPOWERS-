#Makes the entity itself aggro - Tag is to make sure no entity is targeted twice
summon snowball ~ ~2.3 ~ {Motion:[0.0d,-5.0d,0.0d],Item:{id:"minecraft:blue_stained_glass",Count:1b},Tags:["new_snowball"]}
tag @s add aquilix.aggro