execute store result score temp friendUUID1 run data get entity @s UUID[0]
execute store result score temp friendUUID2 run data get entity @s UUID[1]
execute store result score temp friendUUID3 run data get entity @s UUID[2]
execute store result score temp friendUUID4 run data get entity @s UUID[3]

execute as @e[type=enderman,tag=enderman.freed,distance=..75] if score @s friendUUID1 = temp friendUUID1 if score @s friendUUID2 = temp friendUUID2 if score @s friendUUID3 = temp friendUUID3 if score @s friendUUID4 = temp friendUUID4 run tag @s add enderman.save

execute as @e[type=enderman,tag=enderman.save,limit=1,sort=nearest] run function aquilix:enderman/rescue_1

tag @e[type=enderman,tag=enderman.save] remove enderman.save