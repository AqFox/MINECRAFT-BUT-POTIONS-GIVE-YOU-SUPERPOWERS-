scoreboard players remove particle enderman.anim 1
#execute at @s run particle minecraft:dust 0.4 0.15 0.5 0.8 ^ ^ ^1.3 0 0 0 0 1 force
execute at @s run particle minecraft:flame ^ ^ ^1.3 

execute at @s run tp @s ~ ~ ~ ~ ~2
scoreboard players operation angle enderman.anim += @s enderman.anim
execute store result entity @s Rotation[0] float 0.08 run scoreboard players get angle enderman.anim
execute if score particle enderman.anim matches 1.. at @s run function aquilix:enderman/residue_particle_2