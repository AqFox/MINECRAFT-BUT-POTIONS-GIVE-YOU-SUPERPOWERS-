execute as @e[type=minecraft:potion,nbt={Item:{tag:{power:2}}}] at @s unless block ~ ~-0.5 ~ air run summon tnt ~ ~ ~ {Fuse:3}
