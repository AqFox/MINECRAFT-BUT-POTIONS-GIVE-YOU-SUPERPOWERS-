scoreboard players reset @s timer.decoy
scoreboard players reset @s timer.inferno
scoreboard players reset @s timer.enderman
scoreboard players reset @s timer.gravity
execute as @e[type=skeleton,tag=aquilix.decoy] if score @s decoy.UUID1 = temp decoy.UUID1 if score @s decoy.UUID2 = temp decoy.UUID2 if score @s decoy.UUID3 = temp decoy.UUID3 if score @s decoy.UUID4 = temp decoy.UUID4 at @s run function aquilix:decoy/destroy
advancement revoke @s only aquilix:drink/milk
scoreboard players reset @s aquilix.death