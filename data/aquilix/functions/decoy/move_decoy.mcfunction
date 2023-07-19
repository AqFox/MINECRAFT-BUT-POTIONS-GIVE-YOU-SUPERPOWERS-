#Store displacement into new value to apply rotation to
scoreboard players operation move decoy.x = dx decoy.x
scoreboard players operation move decoy.z = dz decoy.z

#Remove fall damage
data modify entity @s FallDistance set value 0.0f

#Cool particle effect
execute at @s run particle dust 0.4 0.6 1.0 0.7 ~ ~0.75 ~ 0.4 0.75 0.4 0 2 force

#Get current position to add vector to
execute store result score @s decoy.x run data get entity @s Pos[0] 1000
execute store result score @s decoy.y run data get entity @s Pos[1] 1000
execute store result score @s decoy.z run data get entity @s Pos[2] 1000

#If the player jumped, jump
execute if score jumped aquilix.jump matches 1 if entity @s[nbt={OnGround:1b}] run data modify entity @s Motion[1] set value 0.42d

#Modify equipment based on player
data modify entity @s ArmorItems set from storage aquilix:decoy ArmorItems
data modify entity @s HandItems set from storage aquilix:decoy HandItems

#Keep decoy from catching fire from sunlight
data modify entity @s Fire set value -10

#1 hit death mechanic
execute store result score temp decoy.hp run data get entity @s Health
execute at @s if score temp decoy.hp matches ..18 run function aquilix:decoy/destroy

#If player has levitation, match y-motion
execute if score levitation aquilix.return matches 1 run data modify entity @s Motion[1] set from storage aquilix:decoy Motion[1]

#Move based on rotation
execute if entity @s[tag=decoy.1] run function aquilix:decoy/rotations/1
execute if entity @s[tag=decoy.2] run function aquilix:decoy/rotations/2
execute if entity @s[tag=decoy.3] run function aquilix:decoy/rotations/3
execute if entity @s[tag=decoy.4] run function aquilix:decoy/rotations/4
execute if entity @s[tag=decoy.5] run function aquilix:decoy/rotations/5