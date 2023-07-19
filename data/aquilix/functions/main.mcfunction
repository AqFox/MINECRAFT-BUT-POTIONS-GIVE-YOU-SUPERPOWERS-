execute as @a[scores={aquilix.death=1..}] run function aquilix:drink_milk

#damage give
execute as @a[scores={damage_potion=1..}] run function aquilix:damage_give_rdm

#decoy
execute as @a[scores={timer.decoy=1..}] run function aquilix:decoy/tick
scoreboard players set @a aquilix.jump 0

#inferno
execute as @a[scores={timer.inferno=1..}] at @s run function aquilix:inferno/tick
execute as @e[type=area_effect_cloud,tag=inferno_emitter] at @s run function aquilix:inferno/spin_particle
execute as @e[type=fireball,tag=!inferno.hit] at @s run function aquilix:inferno/craft/fireball_check

#enderman
execute as @a[scores={rescue_time=1..}] run function aquilix:enderman/rescuing_tick
execute as @a[scores={timer.enderman=1..}] at @s run function aquilix:enderman/tick
execute as @e[type=enderman] at @s run function aquilix:enderman/mob_tick
execute as @a[scores={aquilix.health=1}] unless score @s rescue_time matches 1.. at @s run function aquilix:enderman/danger_check
execute as @e[type=villager,tag=a
quilix.residue] at @s run function aquilix:enderman/residue

#graviy
execute as @a[scores={timer.gravity=1..}] at @s run function aquilix:gravity/tick


#show effects
scoreboard players enable @a effects
execute as @a[scores={effects=1..}] run function aquilix:show_effects

# Lightning Potion
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if predicate aquilix:sneak run scoreboard players add @s sneaktimer 1
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute unless predicate aquilix:sneak run scoreboard players set @s sneaktimer 0
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 2 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.2
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] eat @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 4 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.4
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 6 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.7
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 8 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 10 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 12 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
execute as @a[nbt={ActiveEffects:[{Id:27b}]}] at @s run execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run execute if score @s sneaktimer matches 15 run summon minecraft:lightning_bolt ^ ^1 ^15
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={ActiveEffects:[{Id:27b}]}] at @s run execute if block ~ ~ ~ water run function aquilix:waterdeath

#climb
execute as @a[scores={timer.climb=1..}] at @s run function aquilix:climb/tick

#dynamite
execute as @e[type=minecraft:potion,nbt={Item:{tag:{power:2}}}] at @s unless block ~ ~-0.5 ~ air run summon tnt ~ ~ ~ {Fuse:3}
