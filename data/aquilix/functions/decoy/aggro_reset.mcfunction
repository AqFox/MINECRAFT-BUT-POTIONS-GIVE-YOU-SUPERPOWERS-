#Container for the aggro function - Resets timer and gets rid of tags
scoreboard players set aggro_reset timer.decoy 0
execute as @e[type=skeleton,tag=aquilix.decoy] at @s run function aquilix:decoy/aggro
tag @e[type=#aquilix:hostile,tag=aquilix.aggro] remove aquilix.aggro