execute unless entity @s[tag=gravity.reversed] run scoreboard players set grav aquilix.return 0
execute if entity @s[tag=gravity.reversed] run scoreboard players set grav aquilix.return 1

execute if score grav aquilix.return matches 0 run function aquilix:gravity/toggle_on
execute if score grav aquilix.return matches 1 run function aquilix:gravity/toggle_off

tag @s add gravity.noCheck