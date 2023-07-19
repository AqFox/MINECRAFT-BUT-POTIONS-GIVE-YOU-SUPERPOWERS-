#This does the cool spiky thingies, not the swirly animation

tp @s ~ ~0.015 ~
execute if score @s enderman.anim matches 165 positioned ~ ~2 ~ rotated 60 15 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 165 positioned ~ ~2 ~ rotated 135 -60 run function aquilix:enderman/spike_particle

execute if score @s enderman.anim matches 130 positioned ~ ~2 ~ rotated 20 50 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 130 positioned ~ ~2 ~ rotated 180 10 run function aquilix:enderman/spike_particle

execute if score @s enderman.anim matches 127 positioned ~ ~2 ~ rotated 329 -20 run function aquilix:enderman/spike_particle

execute if score @s enderman.anim matches 125 positioned ~ ~2 ~ rotated 280 80 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 125 positioned ~ ~2 ~ rotated 86 30 run function aquilix:enderman/spike_particle

execute if score @s enderman.anim matches 85 positioned ~ ~2 ~ rotated 81 -86 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 85 positioned ~ ~2 ~ rotated 48 37 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 85 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.5

execute if score @s enderman.anim matches 81 positioned ~ ~2 ~ rotated 149 -84 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 81 positioned ~ ~2 ~ rotated 292 32 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 81 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.8

execute if score @s enderman.anim matches 65 positioned ~ ~2 ~ rotated 149 -16 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 65 positioned ~ ~2 ~ rotated 177 45 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 65 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.5

execute if score @s enderman.anim matches 61 positioned ~ ~2 ~ rotated 332 27 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 61 positioned ~ ~2 ~ rotated 159 46 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 61 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.8

execute if score @s enderman.anim matches 45 positioned ~ ~2 ~ rotated 359 -58 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 45 positioned ~ ~2 ~ rotated 92 -78 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 45 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.5

execute if score @s enderman.anim matches 41 positioned ~ ~2 ~ rotated 70 -34 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 41 positioned ~ ~2 ~ rotated 44 -70 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 41 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.8

execute if score @s enderman.anim matches ..40 run particle flash ~ ~2 ~
execute if score @s enderman.anim matches ..40 run playsound minecraft:block.chorus_flower.grow hostile @a ~ ~ ~ 1 1

execute if score @s enderman.anim matches 25 positioned ~ ~2 ~ rotated 248 23 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 25 positioned ~ ~2 ~ rotated 43 65 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 25 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.5

execute if score @s enderman.anim matches 21 positioned ~ ~2 ~ rotated 2 -58 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 21 positioned ~ ~2 ~ rotated 329 -20 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 21 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 2 0.8

execute if score @s enderman.anim matches 5 positioned ~ ~2 ~ rotated 83 12 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 5 positioned ~ ~2 ~ rotated 198 48 run function aquilix:enderman/spike_particle
execute if score @s enderman.anim matches 5 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 0.5

execute if score @s enderman.anim matches 1 run function aquilix:enderman/finish_convert

scoreboard players remove @s enderman.anim 1