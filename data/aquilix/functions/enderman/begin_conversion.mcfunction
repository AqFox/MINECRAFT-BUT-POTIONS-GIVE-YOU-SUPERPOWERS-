data modify entity @s Invulnerable set value 1b
data modify entity @s NoAI set value 1b
tag @s add enderman.freed
scoreboard players operation temp aquilix.convert = @s aquilix.convert
scoreboard players reset @s aquilix.convert

#This saves the UUID of the person who cured them
execute store result score @s friendUUID1 run data get entity @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},limit=1,sort=nearest] Thrower[0]
execute store result score @s friendUUID2 run data get entity @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},limit=1,sort=nearest] Thrower[1]
execute store result score @s friendUUID3 run data get entity @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},limit=1,sort=nearest] Thrower[2]
execute store result score @s friendUUID4 run data get entity @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},limit=1,sort=nearest] Thrower[3]

kill @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},limit=1,sort=nearest]
playsound minecraft:block.note_block.chime block @a ~ ~ ~ 1 0.5
playsound minecraft:block.note_block.chime block @a ~ ~ ~ 1 0.625

scoreboard players set @s enderman.anim 175

effect give @s minecraft:regeneration 1000000 0 true

execute rotated ~ 0 positioned ^ ^ ^-0.4 run function aquilix:enderman/white_particle