particle minecraft:end_rod ~ ~1 ~ 0 1 0 0.01 0
playsound minecraft:block.beacon.ambient neutral @a ~ ~ ~ 1 0.8
tp @s ~ ~1 ~ 0 -90

execute at @e[type=area_effect_cloud,tag=fire_emitter] run summon area_effect_cloud ^ ^ ^1 {Tags:["aquilix.sine"]}
execute store result score @s enderman.anim run data get entity @e[type=area_effect_cloud,tag=aquilix.sine,limit=1] Pos[1] 100

scoreboard players set particle enderman.anim 90
scoreboard players set angle enderman.anim 0
scoreboard players operation color enderman.anim = @s enderman.anim
scoreboard players add color enderman.anim 90
execute run function aquilix:enderman/residue_particle
scoreboard players add @s timer.enderman 1
execute if score @s timer.enderman matches 6000 run kill @s

tp @s ~ ~ ~