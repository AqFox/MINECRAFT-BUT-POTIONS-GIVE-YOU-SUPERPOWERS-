scoreboard players remove particle enderman.anim 1
scoreboard players remove color enderman.anim 3
execute if score color enderman.anim matches ..-142 at @s run particle minecraft:dust 0.3 0 0.4 0.8 ^ ^ ^1.3 0 0 0 0 1 force
execute if score color enderman.anim matches -143..-93 at @s run particle minecraft:dust 0.4 0.15 0.5 0.8 ^ ^ ^1.3 0 0 0 0 1 force
execute if score color enderman.anim matches -94..-45 at @s run particle minecraft:dust 0.6 0.15 0.6 0.8 ^ ^ ^1.3 0 0 0 0 1 force
execute if score color enderman.anim matches -46..-3 at @s run particle minecraft:dust 0.75 0.15 0.65 0.8 ^ ^ ^1.3 0 0 0 0 1 force
execute if score color enderman.anim matches -4..52 at @s run particle minecraft:dust 0.85 0.3 0.75 0.8 ^ ^ ^1.3 0 0 0 0 1 force
execute if score color enderman.anim matches 53.. at @s run particle minecraft:dust 1.0 0.3 0.8 0.8 ^ ^ ^1.3 0 0 0 0 1 force


execute at @s run tp @s ~ ~ ~ ~ ~2
scoreboard players operation angle enderman.anim += @s enderman.anim
execute store result entity @s Rotation[0] float 0.08 run scoreboard players get angle enderman.anim
execute if score particle enderman.anim matches 1.. at @s run function aquilix:enderman/residue_particle