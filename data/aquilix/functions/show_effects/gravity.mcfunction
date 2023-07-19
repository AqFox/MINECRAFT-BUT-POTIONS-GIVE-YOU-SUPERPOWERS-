#Turns the score (in seconds) into a more readable minutes:seconds format
scoreboard players operation minutes timer.gravity = @s timer.gravity
scoreboard players operation minutes timer.gravity /= #60 constant
scoreboard players operation subtract timer.gravity = minutes timer.gravity
scoreboard players operation subtract timer.gravity *= #60 constant
scoreboard players operation seconds timer.gravity = @s timer.gravity
scoreboard players operation seconds timer.gravity -= subtract timer.gravity

#Tells the player the time. Reformats to put a 0 in front of the seconds if it is less than 10
execute unless score seconds timer.gravity matches ..9 run tellraw @s ["",{"text":"-Gravity","color":"green"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.gravity"}},{"text":":"},{"score":{"name":"seconds","objective":"timer.gravity"}},{"text":")"}]
execute if score seconds timer.gravity matches ..9 run tellraw @s ["",{"text":"-Gravity","color":"green"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.gravity"}},{"text":":0"},{"score":{"name":"seconds","objective":"timer.gravity"}},{"text":")"}]