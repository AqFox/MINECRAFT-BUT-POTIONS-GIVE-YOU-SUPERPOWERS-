#Turns the score (in seconds) into a more readable minutes:seconds format
scoreboard players operation minutes timer.enderman = @s timer.enderman
scoreboard players operation minutes timer.enderman /= #60 constant
scoreboard players operation subtract timer.enderman = minutes timer.enderman
scoreboard players operation subtract timer.enderman *= #60 constant
scoreboard players operation seconds timer.enderman = @s timer.enderman
scoreboard players operation seconds timer.enderman -= subtract timer.enderman

#Tells the player the time. Reformats to put a 0 in front of the seconds if it is less than 10
execute unless score seconds timer.enderman matches ..9 run tellraw @s ["",{"text":"-Ender","color":"dark_purple"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.enderman"}},{"text":":"},{"score":{"name":"seconds","objective":"timer.enderman"}},{"text":")"}]
execute if score seconds timer.enderman matches ..9 run tellraw @s ["",{"text":"-Ender","color":"dark_purple"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.enderman"}},{"text":":0"},{"score":{"name":"seconds","objective":"timer.enderman"}},{"text":")"}]
