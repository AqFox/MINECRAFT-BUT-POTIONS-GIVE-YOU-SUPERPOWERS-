#These are the commands executed once per second, mostly timers and other functions that don't need constant execution

execute as @a[scores={timer.decoy=1..}] run scoreboard players remove @s timer.decoy 1
execute as @e[type=skeleton,tag=aquilix.decoy] at @s run function aquilix:decoy/countdown
scoreboard players add aggro_reset timer.decoy 1
execute if score aggro_reset timer.decoy matches 5.. run function aquilix:decoy/aggro_reset

execute as @a[scores={timer.inferno=1..}] at @s run function aquilix:inferno/loop_1s
data modify entity @e[type=area_effect_cloud,tag=inferno_emitter,limit=1] Age set value 0

execute as @a[scores={timer.enderman=1..}] run scoreboard players remove @s timer.enderman 1
#execute as @a[team=aquilix.enderman] unless score @s timer.enderman matches 1.. run team leave @s
#team join aquilix.enderman @e[type=enderman,team=!aquilix.enderman]

execute as @a[scores={timer.gravity=1..}] run scoreboard players remove @s timer.gravity 1
execute as @a[scores={timer.gravity=1..5}] at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.3

execute as @a[scores={timer.craft=1..}] run scoreboard players remove @s timer.craft 1

schedule function aquilix:loop_1s 1s replace