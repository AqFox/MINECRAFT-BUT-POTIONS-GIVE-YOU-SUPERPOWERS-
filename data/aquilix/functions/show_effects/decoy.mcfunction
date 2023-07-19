#Turns the score (in seconds) into a more readable minutes:seconds format
scoreboard players operation minutes timer.decoy = @s timer.decoy
scoreboard players operation minutes timer.decoy /= #60 constant
scoreboard players operation subtract timer.decoy = minutes timer.decoy
scoreboard players operation subtract timer.decoy *= #60 constant
scoreboard players operation seconds timer.decoy = @s timer.decoy
scoreboard players operation seconds timer.decoy -= subtract timer.decoy

#Tells the player the time. Reformats to put a 0 in front of the seconds if it is less than 10
execute unless score seconds timer.decoy matches ..9 run tellraw @s ["",{"text":"-Decoy","color":"blue"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.decoy"}},{"text":":"},{"score":{"name":"seconds","objective":"timer.decoy"}},{"text":")"}]
execute if score seconds timer.decoy matches ..9 run tellraw @s ["",{"text":"-Decoy","color":"blue"},{"text":": ("},{"score":{"name":"minutes","objective":"timer.decoy"}},{"text":":0"},{"score":{"name":"seconds","objective":"timer.decoy"}},{"text":")"}]