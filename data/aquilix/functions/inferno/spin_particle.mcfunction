execute unless entity @s[tag=inferno.flip] at @s rotated as @s run tp @s ~ ~ ~ ~8 ~-4
execute if entity @s[tag=inferno.flip] at @s rotated as @s run tp @s ~ ~ ~ ~8 ~4

execute if entity @s[x_rotation=-90] run tag @s add inferno.flip
execute if entity @s[x_rotation=90] run tag @s remove inferno.flip