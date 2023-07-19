#240 degree rotation
#Apply rotation to 'move'
#Add new 'move' to current position

scoreboard players operation math decoy.x = move decoy.x
scoreboard players operation math decoy.z = move decoy.z

#Get new x value using equation x' = xcos(a) - zsin(a)
scoreboard players operation move decoy.x /= #-2 constant
scoreboard players operation math decoy.z *= #-866 constant
scoreboard players operation math decoy.z /= #1000 constant
scoreboard players operation move decoy.x -= math decoy.z

#Get new z value using equation z' = xsin(a) + zcos(a)
scoreboard players operation move decoy.z /= #-2 constant
scoreboard players operation math decoy.x *= #-866 constant
scoreboard players operation math decoy.x /= #1000 constant
scoreboard players operation move decoy.z += math decoy.x

scoreboard players operation temp decoy.x = @s decoy.x
scoreboard players operation temp decoy.z = @s decoy.z

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s decoy.x += move decoy.x
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s decoy.z += move decoy.z

#data modify entity @s Rotation set from storage decoy.data Rotation
execute store result score @s decoy.rotation run data get storage decoy.data Rotation[0] 100
scoreboard players add @s decoy.rotation 24000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s decoy.rotation
data modify entity @s Rotation[1] set from storage decoy.data Rotation[1]

execute at @s unless block ~0.3 ~ ~0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~0.3 ~1.5 ~0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~0.3 ~ ~-0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~0.3 ~1.5 ~-0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~-0.3 ~ ~0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~-0.3 ~1.5 ~0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~-0.3 ~ ~-0.3 #aquilix:valid_tp run function aquilix:decoy/collision
execute at @s unless block ~-0.3 ~1.5 ~-0.3 #aquilix:valid_tp run function aquilix:decoy/collision

#execute at @s run tp @s ~ ~ ~ ~240 ~