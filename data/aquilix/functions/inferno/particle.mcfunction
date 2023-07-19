data modify entity @s Pos set from storage aquilix:inferno Pos
execute positioned as @s run tp @s ~ ~4 ~
execute positioned as @s run tp @s ^ ^ ^4

data modify entity @s Pos[0] set from storage aquilix:inferno Pos[0]
data modify entity @s Pos[2] set from storage aquilix:inferno Pos[2]

execute positioned as @s rotated ~ 0 run particle smoke ^ ^ ^4 0.1 0.1 0.1 0.05 5 force
execute positioned as @s rotated ~ 0 run particle smoke ^ ^ ^-4 0.1 0.1 0.1 0.05 5 force
execute positioned as @s rotated ~ 0 run particle smoke ^4 ^ ^ 0.1 0.1 0.1 0.05 5 force
execute positioned as @s rotated ~ 0 run particle smoke ^-4 ^ ^ 0.1 0.1 0.1 0.05 5 force

execute positioned as @s rotated ~ 0 run particle dust 1 0.75 0 1 ^ ^ ^4 0 0 0 0 1 force
execute positioned as @s rotated ~ 0 run particle dust 1 0.75 0 1 ^ ^ ^-4 0 0 0 0 1 force
execute positioned as @s rotated ~ 0 run particle dust 1 0.75 0 1 ^4 ^ ^ 0 0 0 0 1 force
execute positioned as @s rotated ~ 0 run particle dust 1 0.75 0 1 ^-4 ^ ^ 0 0 0 0 1 force

data modify entity @s Pos set from storage aquilix:inferno Pos
execute positioned as @s run tp @s ~ ~1 ~
execute positioned as @s run tp @s ^ ^ ^1
data modify entity @s Pos[0] set from storage aquilix:inferno Pos[0]
data modify entity @s Pos[2] set from storage aquilix:inferno Pos[2]

execute positioned as @s rotated ~ 0 run particle flame ^1 ^ ^
execute positioned as @s rotated ~ 0 run particle flame ^-1 ^ ^