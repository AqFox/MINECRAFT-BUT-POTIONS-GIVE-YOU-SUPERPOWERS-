#Get proper starting rotation for decoys
execute if entity @s[tag=decoy.1] run tp @s ~ ~ ~ ~60 0
execute if entity @s[tag=decoy.2] run tp @s ~ ~ ~ ~120 0
execute if entity @s[tag=decoy.3] run tp @s ~ ~ ~ ~180 0
execute if entity @s[tag=decoy.4] run tp @s ~ ~ ~ ~240 0
execute if entity @s[tag=decoy.5] run tp @s ~ ~ ~ ~300 0

#Sync UUID to player
execute store result score @s decoy.UUID1 run data get storage decoy.data UUID[0]
execute store result score @s decoy.UUID2 run data get storage decoy.data UUID[1]
execute store result score @s decoy.UUID3 run data get storage decoy.data UUID[2]
execute store result score @s decoy.UUID4 run data get storage decoy.data UUID[3]

#Store decoy location for later use
execute store result score @s decoy.x run data get entity @s Pos[0] 100
execute store result score @s decoy.y run data get entity @s Pos[1] 100
execute store result score @s decoy.z run data get entity @s Pos[2] 100

#Giving weakness in the summon command wasn't working for some reason, so here we are I guess
effect give @s weakness 1000000 255 true

#Makes sure the decoy_setup command is never run from these decoys again
tag @s remove decoy.new

#Instant aggro not tied to timer
execute at @s run function aquilix:decoy/aggro
tag @e[type=#aquilix:hostile,tag=aquilix.aggro] remove aquilix.aggro

#Prevent collisions for decoys
team join aquilix.decoy @s