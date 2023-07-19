scoreboard players set enderman.dodge aquilix.return 0
particle portal ~ ~0.5 ~ 0.25 0.3 0.25 0.3 2

execute if entity @s[nbt={HurtTime:9s}] run function aquilix:enderman/teleport
execute if block ~0.3 ~ ~0.3 minecraft:water run function aquilix:enderman/water
execute if block ~0.3 ~ ~-0.3 minecraft:water run function aquilix:enderman/water
execute if block ~-0.3 ~ ~0.3 minecraft:water run function aquilix:enderman/water
execute if block ~-0.3 ~ ~-0.3 minecraft:water run function aquilix:enderman/water

execute if block ~0.3 ~1 ~0.3 minecraft:water run function aquilix:enderman/water
execute if block ~0.3 ~1 ~-0.3 minecraft:water run function aquilix:enderman/water
execute if block ~-0.3 ~1 ~0.3 minecraft:water run function aquilix:enderman/water
execute if block ~-0.3 ~1 ~-0.3 minecraft:water run function aquilix:enderman/water

#Get current position
execute store result score dx enderman.x run data get entity @s Pos[0] 200
execute store result score dy enderman.y run data get entity @s Pos[1] 200
execute store result score dz enderman.z run data get entity @s Pos[2] 200

#Subtract previous position from current position to get displacement
scoreboard players operation dx enderman.x -= @s enderman.x
scoreboard players operation dy enderman.y -= @s enderman.y
scoreboard players operation dz enderman.z -= @s enderman.z

#Get current position again to be used as previous position for next tick
execute store result score @s enderman.x run data get entity @s Pos[0] 200
execute store result score @s enderman.y run data get entity @s Pos[1] 200
execute store result score @s enderman.z run data get entity @s Pos[2] 200

#This is used to make sure the scan doesn't accidentally fire on a player's own projectile
execute store result score temp decoy.UUID1 run data get entity @s UUID[0]
execute store result score temp decoy.UUID2 run data get entity @s UUID[1]
execute store result score temp decoy.UUID3 run data get entity @s UUID[2]
execute store result score temp decoy.UUID4 run data get entity @s UUID[3]

tag @s add enderman.track
execute as @e[type=#minecraft:impact_projectiles,distance=..10,nbt=!{inGround:1b}] at @s run function aquilix:enderman/projectile_predict
execute if score enderman.dodge aquilix.return matches 1 run function aquilix:enderman/teleport
tag @s remove enderman.track