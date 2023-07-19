execute store result score self decoy.UUID1 run data get entity @s UUID[0]
execute store result score self decoy.UUID2 run data get entity @s UUID[1]
execute store result score self decoy.UUID3 run data get entity @s UUID[2]
execute store result score self decoy.UUID4 run data get entity @s UUID[3]

execute if score self decoy.UUID1 = temp decoy.UUID1 if score self decoy.UUID2 = temp decoy.UUID2 if score self decoy.UUID3 = temp decoy.UUID3 if score self decoy.UUID4 = temp decoy.UUID4 if entity @s[nbt={SelectedItem:{id:"minecraft:potion",tag:{fire.charge:1b}}}] run function aquilix:inferno/craft/level_up
execute if score self decoy.UUID1 = temp decoy.UUID1 if score self decoy.UUID2 = temp decoy.UUID2 if score self decoy.UUID3 = temp decoy.UUID3 if score self decoy.UUID4 = temp decoy.UUID4 if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run function aquilix:inferno/craft/glass_bottle