scoreboard players remove temp aquilix.convert 5
particle minecraft:dust 1.0 0.65 0.2 1 ^ ^-0.4 ^0.75
particle minecraft:dust 1.0 0.65 0.2 1 ^ ^ ^-0.75
particle dust 0.0 0.7 0.6 0.5 ^0.5 ^-0.2 ^
particle dust 0.0 0.7 0.6 0.5 ^-0.5 ^-0.1 ^
execute positioned ~ ~0.1 ~ positioned ^0.1 ^ ^ rotated ~15 ~ if score temp aquilix.convert matches 1.. run function aquilix:enderman/save_particle