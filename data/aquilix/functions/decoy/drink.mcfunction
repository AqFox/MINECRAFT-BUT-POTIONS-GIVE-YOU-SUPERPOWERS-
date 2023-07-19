clear @s minecraft:glass_bottle

#Get UUID to sync armor stands to player
data modify storage decoy.data UUID set from entity @s UUID

#Illusioner sound
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1

#Sets potion timer
scoreboard players set @s timer.decoy 60

#Store position for future use in moving decoys
execute store result score @s decoy.x run data get entity @s Pos[0] 1000
execute store result score @s decoy.z run data get entity @s Pos[2] 1000

#Store UUID as a scoreboard for easier use
execute store result score @s decoy.UUID1 run data get entity @s UUID[0]
execute store result score @s decoy.UUID2 run data get entity @s UUID[1]
execute store result score @s decoy.UUID3 run data get entity @s UUID[2]
execute store result score @s decoy.UUID4 run data get entity @s UUID[3]

#Summon the decoys - Slowed, invisible, weakened skeletons with no loot table
summon skeleton ~ ~ ~ {Tags:["decoy.new","aquilix.decoy","decoy.1"],DeathLootTable:"aquilix:entities/decoy",ActiveEffects:[{Id:2b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:18b,Amplifier:10b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0}],Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
summon skeleton ~ ~ ~ {Tags:["decoy.new","aquilix.decoy","decoy.2"],DeathLootTable:"aquilix:entities/decoy",ActiveEffects:[{Id:2b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:18b,Amplifier:10b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0}],Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
summon skeleton ~ ~ ~ {Tags:["decoy.new","aquilix.decoy","decoy.3"],DeathLootTable:"aquilix:entities/decoy",ActiveEffects:[{Id:2b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:18b,Amplifier:10b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0}],Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
summon skeleton ~ ~ ~ {Tags:["decoy.new","aquilix.decoy","decoy.4"],DeathLootTable:"aquilix:entities/decoy",ActiveEffects:[{Id:2b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:18b,Amplifier:10b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0}],Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
summon skeleton ~ ~ ~ {Tags:["decoy.new","aquilix.decoy","decoy.5"],DeathLootTable:"aquilix:entities/decoy",ActiveEffects:[{Id:2b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:18b,Amplifier:10b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0}],Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}

#Sets up syncing the skeletons, among other scoreboards
execute as @e[type=skeleton,tag=decoy.new] run function aquilix:decoy/decoy_setup

advancement revoke @s only aquilix:drink/decoy