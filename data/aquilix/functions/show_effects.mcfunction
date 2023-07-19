tellraw @s {"text":"Your effects:","bold":"true"}

execute if score @s timer.decoy matches 1.. run function aquilix:show_effects/decoy
execute if score @s timer.gravity matches 1.. run function aquilix:show_effects/gravity
execute if score @s timer.enderman matches 1.. run function aquilix:show_effects/ender
execute if score @s timer.fire matches 1.. run function aquilix:show_effects/inferno

execute unless score @s timer.gravity matches 1.. unless score @s timer.decoy matches 1.. unless score @s timer.enderman matches 1.. unless score @s timer.inferno matches 1.. run tellraw @s {"text":"-No effects active","color":"red"}

scoreboard players reset @s effects