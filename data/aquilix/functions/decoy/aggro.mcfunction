#Makes a random mob aggressive to the entity running the command - Run from the decoys every 5 seconds
execute as @e[type=#aquilix:hostile,distance=..10,limit=1,sort=random,tag=!aquilix.decoy,nbt=!{Tags:["aquilix.aggro"]}] at @s run function aquilix:decoy/aggro_tag
data modify entity @e[type=snowball,tag=new_snowball,limit=1] Owner set from entity @s UUID
tag @e[type=snowball,tag=new_snowball] remove new_snowball