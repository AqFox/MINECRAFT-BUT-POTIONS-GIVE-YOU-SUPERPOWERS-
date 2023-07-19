#Commands executed from the projectile itself
summon area_effect_cloud ~ ~ ~ {Tags:["enderman.track"]}

execute store result score projectile decoy.UUID1 run data get entity @s Owner[0]
execute store result score projectile decoy.UUID2 run data get entity @s Owner[1]
execute store result score projectile decoy.UUID3 run data get entity @s Owner[2]
execute store result score projectile decoy.UUID4 run data get entity @s Owner[3]

execute store result score x enderman.motion run data get entity @s Motion[0] 200
execute store result score y enderman.motion run data get entity @s Motion[1] 200
execute store result score z enderman.motion run data get entity @s Motion[2] 200

execute store result score x enderman.pos run data get entity @s Pos[0] 1000
execute store result score y enderman.pos run data get entity @s Pos[1] 1000
execute store result score z enderman.pos run data get entity @s Pos[2] 1000

scoreboard players operation x enderman.motion += dx enderman.x
scoreboard players operation y enderman.motion += dy enderman.y
scoreboard players operation z enderman.motion += dz enderman.z

scoreboard players set invert aquilix.return 0
execute store success score invert aquilix.return if score temp decoy.UUID1 = projectile decoy.UUID1 if score temp decoy.UUID2 = projectile decoy.UUID2 if score temp decoy.UUID3 = projectile decoy.UUID3 if score temp decoy.UUID4 = projectile decoy.UUID4

execute as @e[type=area_effect_cloud,tag=enderman.track] at @s if score invert aquilix.return matches 0 run function aquilix:enderman/track_projectile