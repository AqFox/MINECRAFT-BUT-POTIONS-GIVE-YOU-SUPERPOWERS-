execute store result score y gravity.motion run data get entity @s Motion[1] 100
particle dust 0.4 0.7 1.0 1.0 ~ ~ ~ 0.2 0.1 0.2 0.3 2 force

execute if score y gravity.motion matches ..4 run effect give @s minecraft:levitation 1 3 true
execute if score y gravity.motion matches 5..13 run effect give @s minecraft:levitation 1 5 true
execute if score y gravity.motion matches 14..22 run effect give @s minecraft:levitation 1 7 true
execute if score y gravity.motion matches 23..31 run effect give @s minecraft:levitation 1 9 true
execute if score y gravity.motion matches 32..40 run effect give @s minecraft:levitation 1 11 true
execute if score y gravity.motion matches 41..49 run effect give @s minecraft:levitation 1 13 true
execute if score y gravity.motion matches 50..58 run effect give @s minecraft:levitation 1 15 true
execute if score y gravity.motion matches 59..67 run effect give @s minecraft:levitation 1 17 true
execute if score y gravity.motion matches 68..76 run effect give @s minecraft:levitation 1 19 true
execute if score y gravity.motion matches 77..94 run effect give @s minecraft:levitation 1 23 true
execute if score y gravity.motion matches 95..112 run effect give @s minecraft:levitation 1 27 true
execute if score y gravity.motion matches 113..148 run effect give @s minecraft:levitation 1 35 true
execute if score y gravity.motion matches 149..184 run effect give @s minecraft:levitation 1 43 true
execute if score y gravity.motion matches 185.. run effect give @s minecraft:levitation 1 51 true

execute positioned ~ 350 ~ if entity @s[dy=1000] run function aquilix:gravity/toggle_off
 