#Turns the score (in seconds) into a more readable minutes:seconds format
scoreboard players operation minutes timer.inferno = @s timer.inferno
scoreboard players operation minutes timer.inferno /= #60 constant
scoreboard players operation subtract timer.inferno = minutes timer.inferno
scoreboard players operation subtract timer.inferno *= #60 constant
scoreboard players operation seconds timer.inferno = @s timer.inferno
scoreboard players operation seconds timer.inferno -= subtract timer.inferno

#Tells the player the time. Reformats to put a 0 in front of the seconds if it is less than 10
execute unless score seconds timer.inferno matches ..9 run tellraw @s ["",{"text":"-Inferno","color":"gold"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.inferno"}},{"text":":"},{"score":{"name":"seconds","objective":"timer.inferno"}},{"text":")"}]
execute if score seconds timer.inferno matches ..9 run tellraw @s ["",{"text":"-Inferno","color":"gold"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.inferno"}},{"text":":0"},{"score":{"name":"seconds","objective":"timer.inferno"}},{"text":")"}]
