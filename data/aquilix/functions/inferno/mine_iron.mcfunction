execute as @e[type=item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:iron_ore"}}] at @s run function aquilix:inferno/smelt_iron
scoreboard players reset @s broke_iron