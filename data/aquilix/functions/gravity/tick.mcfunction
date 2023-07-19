execute if entity @s[predicate=aquilix:is_sneaking,tag=!gravity.noCheck] run function aquilix:gravity/toggle
execute unless entity @s[predicate=aquilix:is_sneaking] run tag @s remove gravity.noCheck

execute unless entity @s[tag=gravity.reversed] run particle dust 0.7 1.0 0.5 1 ~ ~ ~ 0.2 0.1 0.2 0.3 2

execute if entity @s[tag=gravity.reversed] run function aquilix:gravity/antigrav