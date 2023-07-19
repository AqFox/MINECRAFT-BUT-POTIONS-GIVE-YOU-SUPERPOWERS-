schedule function aquilix:welcome_message 10t

scoreboard objectives add sneaktimer dummy

scoreboard objectives add damage_potion minecraft.custom:minecraft.damage_taken

#General
forceload add 0 0 0 0
scoreboard objectives add aquilix.gm dummy
scoreboard objectives add aquilix.return dummy
function aquilix:loop_1s
scoreboard objectives add constant dummy
scoreboard players set #2 constant 2
scoreboard players set #866 constant 866
scoreboard players set #-2 constant -2
scoreboard players set #-866 constant -866
scoreboard players set #1000 constant 1000
scoreboard players set #-1 constant -1
scoreboard players set #60 constant 60
scoreboard objectives add aquilix.jump minecraft.custom:minecraft.jump
scoreboard objectives add aquilix.health health
scoreboard objectives add aquilix.death minecraft.custom:minecraft.deaths
team add aquilix.noCollide
team modify aquilix.noCollide collisionRule never
scoreboard objectives add effects trigger

#Decoy
scoreboard objectives add decoy.head dummy
scoreboard objectives add decoy.id dummy
scoreboard objectives add decoy.UUID1 dummy
scoreboard objectives add decoy.UUID2 dummy
scoreboard objectives add decoy.UUID3 dummy
scoreboard objectives add decoy.UUID4 dummy


scoreboard objectives add timer.decoy dummy
scoreboard objectives add decoy.x dummy
scoreboard objectives add decoy.y dummy
scoreboard objectives add decoy.z dummy
scoreboard objectives add decoy.rotation dummy
scoreboard objectives add decoy.hp dummy
team add aquilix.decoy
team modify aquilix.decoy collisionRule never

#Inferno
scoreboard objectives add timer.inferno dummy
kill @e[type=area_effect_cloud,tag=inferno_emitter]
summon area_effect_cloud 0 0 0 {Duration:2000,Tags:["inferno_emitter"]}
scoreboard objectives add inferno.scan dummy
scoreboard objectives add broke_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add broke_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add inferno.motionX dummy
scoreboard objectives add inferno.motionY dummy
scoreboard objectives add inferno.motionZ dummy
scoreboard objectives add inferno.lvl dummy

#Ender Potion
scoreboard objectives add timer.enderman dummy
scoreboard objectives add enderman.motion dummy
scoreboard objectives add enderman.pos dummy
scoreboard objectives add enderman.x dummy
scoreboard objectives add enderman.y dummy
scoreboard objectives add enderman.z dummy
#team add aquilix.enderman
#team modify aquilix.enderman friendlyFire false
scoreboard objectives add aquilix.convert dummy
scoreboard objectives add enderman.anim dummy
scoreboard objectives add rescue_time dummy

scoreboard objectives add friendUUID1 dummy
scoreboard objectives add friendUUID2 dummy
scoreboard objectives add friendUUID3 dummy
scoreboard objectives add friendUUID4 dummy

#Gravity
scoreboard objectives add timer.gravity dummy
scoreboard objectives add gravity.motion dummy

#climb
scoreboard objectives add timer.climb dummy
scoreboard objectives add climb.motion dummy
