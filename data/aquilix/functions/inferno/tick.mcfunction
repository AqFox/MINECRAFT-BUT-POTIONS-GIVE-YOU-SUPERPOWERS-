execute as @e[type=#aquilix:burn,distance=..4] run data modify entity @s Fire set value 20

data modify storage aquilix:inferno Pos set from entity @s Pos
summon area_effect_cloud ~ ~ ~ {Tags:["inferno.particle"]}
execute as @e[type=area_effect_cloud,tag=inferno.particle] at @s rotated as @e[type=area_effect_cloud,tag=inferno_emitter,limit=1] run function aquilix:inferno/particle
execute at @a[distance=1..4] run setblock ~ ~ ~ minecraft:fire[age=9] keep
scoreboard players set x inferno.scan 0
scoreboard players set y inferno.scan 0
scoreboard players set z inferno.scan 0
execute if score @s broke_iron matches 1.. run function aquilix:inferno/mine_iron
execute if score @s broke_gold matches 1.. run function aquilix:inferno/mine_gold
execute align xyz positioned ~-1.5 ~-0.5 ~-1.5 run function aquilix:inferno/scan/z