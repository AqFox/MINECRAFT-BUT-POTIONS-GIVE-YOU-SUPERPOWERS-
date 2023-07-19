execute if entity @s[nbt=!{AngerTime:0},tag=!enderman.freed] if entity @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] run function aquilix:enderman/save
execute if score @s aquilix.convert matches 1.. unless entity @e[type=item,distance=..1.25,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] run scoreboard players reset @s aquilix.convert
execute if entity @s[tag=enderman.freed] run function aquilix:enderman/freed_tick

execute if score @s enderman.anim matches 1.. run function aquilix:enderman/convert_anim

execute if entity @s[tag=enderman.freed,nbt={Health:40.0f}] run effect give @s minecraft:weakness 255 1 true
execute if entity @s[tag=enderman.freed,nbt={HurtTime:10s}] run effect clear @s minecraft:weakness
execute if entity @s[tag=enderman.freed,nbt={HurtTime:10s}] run effect give @s minecraft:strength 5 1 true

execute if entity @s[tag=enderman.saving] facing entity @p eyes run tp @s ~ ~ ~ ~ 40