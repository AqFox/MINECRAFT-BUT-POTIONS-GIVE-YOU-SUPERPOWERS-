data modify entity @s NoAI set value 0b
data modify entity @s Invulnerable set value 0b
playsound entity.generic.explode neutral @a
particle minecraft:dragon_breath ~ ~ ~ 3 3 3 0.1 1000

summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["aquilix.residue","new_residue"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
tag @e[type=villager,tag=new_residue] remove new_residue