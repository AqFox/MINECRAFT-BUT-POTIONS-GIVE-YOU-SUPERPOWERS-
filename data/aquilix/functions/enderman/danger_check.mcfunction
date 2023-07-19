scoreboard players set mobCount aquilix.return 0
execute store result score mobCount aquilix.return if entity @e[distance=..5,type=#aquilix:hostile]

execute if score mobCount aquilix.return matches 5.. run function aquilix:enderman/rescue_player