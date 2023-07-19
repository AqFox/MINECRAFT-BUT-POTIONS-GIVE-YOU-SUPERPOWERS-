scoreboard players add @s aquilix.convert 1
scoreboard players operation temp aquilix.convert = @s aquilix.convert
playsound minecraft:block.chorus_flower.grow hostile @a ~ ~ ~ 1 1
execute rotated ~ 0 positioned ^ ^ ^-0.4 run function aquilix:enderman/save_particle

execute if score @s aquilix.convert matches 200.. run function aquilix:enderman/begin_conversion