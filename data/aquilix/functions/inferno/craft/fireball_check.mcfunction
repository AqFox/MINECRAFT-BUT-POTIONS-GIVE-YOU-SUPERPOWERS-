execute unless entity @s[tag=fire.stored] run function aquilix:inferno/craft/fireball_store

execute store result score temp fire.motionX run data get entity @s power[0] 100
execute store result score temp fire.motionY run data get entity @s power[1] 100
execute store result score temp fire.motionZ run data get entity @s power[2] 100

execute unless score temp fire.motionX = @s fire.motionX unless score temp fire.motionY = @s fire.motionY unless score temp fire.motionZ = @s fire.motionZ run function aquilix:inferno/craft/player_check