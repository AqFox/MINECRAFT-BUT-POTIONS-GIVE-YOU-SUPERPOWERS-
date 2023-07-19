execute rotated ~ 0 run tp @s ^ ^ ^1
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a
execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 40
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a
tag @s remove enderman.saving