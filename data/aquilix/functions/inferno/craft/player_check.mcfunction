tag @s add inferno.hit
scoreboard players set inferno.hit aquilix.return 0

#Don't mind me just recycling some scoreboards
execute store result score temp decoy.UUID1 run data get entity @s Owner[0]
execute store result score temp decoy.UUID2 run data get entity @s Owner[1]
execute store result score temp decoy.UUID3 run data get entity @s Owner[2]
execute store result score temp decoy.UUID4 run data get entity @s Owner[3]

execute as @a[distance=..20] run function aquilix:inferno/craft/check_self

execute if score inferno.hit aquilix.return matches 1 run function aquilix:inferno/craft/kill_fireball
execute if score inferno.hit aquilix.return matches 2 run function aquilix:inferno/craft/extra_kill_fireball
