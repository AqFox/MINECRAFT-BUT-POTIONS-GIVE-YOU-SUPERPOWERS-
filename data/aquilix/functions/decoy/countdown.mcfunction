#Destroys decoys after 60 seconds - Using per-decoy timer rather than going off of the player in case they enter unloaded chunks
scoreboard players add @s timer.decoy 1
execute if score @s timer.decoy matches 60 run function aquilix:decoy/destroy