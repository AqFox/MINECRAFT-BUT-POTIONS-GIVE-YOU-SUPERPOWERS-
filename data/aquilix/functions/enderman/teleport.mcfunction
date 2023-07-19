particle portal ~ ~1 ~ 0.3 0.4 0.3 0.5 100
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers ~ ~ 10 10 false @s
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers ~ ~ 10 10 under 126 false @s
execute at @s run particle portal ~ ~1 ~ 0.3 0.4 0.3 0.5 100
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1