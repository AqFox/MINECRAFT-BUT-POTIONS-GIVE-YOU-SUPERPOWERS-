scoreboard players remove temp aquilix.convert 5
particle minecraft:end_rod ^ ^-0.4 ^0.75 0 0 0 0.01 1
particle minecraft:end_rod ^ ^ ^-0.75 0 0 0 0.01 1
execute positioned ~ ~0.1 ~ positioned ^0.1 ^ ^ rotated ~15 ~ if score temp aquilix.convert matches 1.. run function aquilix:enderman/white_particle
tp @s ~ ~ ~ ~ -50