#These are the commands executed from the player, and the start of the chain that leads down to the decoy's behavior

#Store UUID into a fake player to be used for easier comparison
scoreboard players operation temp decoy.UUID1 = @s decoy.UUID1
scoreboard players operation temp decoy.UUID2 = @s decoy.UUID2
scoreboard players operation temp decoy.UUID3 = @s decoy.UUID3
scoreboard players operation temp decoy.UUID4 = @s decoy.UUID4

#Get current position
execute store result score dx decoy.x run data get entity @s Pos[0] 1000
execute store result score dz decoy.z run data get entity @s Pos[2] 1000

#Check if the player jumped, and store it in a fake player
scoreboard players set jumped aquilix.jump 0
execute if score @s aquilix.jump matches 1.. run scoreboard players set jumped aquilix.jump 1

#Subtract previous position from current position to get displacement
scoreboard players operation dx decoy.x -= @s decoy.x
scoreboard players operation dz decoy.z -= @s decoy.z

#Get current position again to be used as previous position for next tick
execute store result score @s decoy.x run data get entity @s Pos[0] 1000
execute store result score @s decoy.z run data get entity @s Pos[2] 1000

#Get player's rotation to be stored into the decoys
data modify storage decoy.data Rotation set from entity @s Rotation

#Store inventory data to be put on decoys
data modify storage aquilix:decoy ArmorItems set value [{},{},{},{}]
data modify storage aquilix:decoy ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify storage aquilix:decoy ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify storage aquilix:decoy ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify storage aquilix:decoy ArmorItems[3] set from entity @s Inventory[{Slot:103b}]

data modify storage aquilix:decoy HandItems set value [{},{}]
data modify storage aquilix:decoy HandItems[0] set from entity @s SelectedItem
data modify storage aquilix:decoy HandItems[1] set from entity @s Inventory[{Slot:-106b}]

#Cool particle effect
execute at @s run particle dust 0.4 0.6 1.0 0.7 ~ ~0.75 ~ 0.4 0.75 0.4 0 2 force

#Carry levitation over to decoys
scoreboard players set levitation aquilix.return 0
execute store success score levitation aquilix.return if entity @s[nbt={ActiveEffects:[{Id:25b}]}] run data modify storage aquilix:decoy Motion set from entity @s Motion

#Execute as all armor stands with with a matching UUID value
execute as @e[type=skeleton,tag=aquilix.decoy] if score @s decoy.UUID1 = temp decoy.UUID1 if score @s decoy.UUID2 = temp decoy.UUID2 if score @s decoy.UUID3 = temp decoy.UUID3 if score @s decoy.UUID4 = temp decoy.UUID4 run function aquilix:decoy/move_decoy