execute rotated ~ 0 run tp @s ^ ^ ^1
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a
execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 40
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a
execute at @s rotated ~ 0 positioned ^ ^ ^1 run scoreboard players set @p rescue_time 10
tag @s add enderman.saving
