execute unless predicate aquilix:sneak run effect clear @s minecraft:levitation
execute unless block ^ ^1 ^1 #aquilix:dontclimb run execute if block ~ ~-1 ~ #aquilix:dontclimb run execute if predicate aquilix:sneak run effect give @s minecraft:levitation 1 1 true