scoreboard players set y inferno.scan 0
scoreboard players add z inferno.scan 1
function aquilix:inferno/scan/y
execute if score z inferno.scan matches ..4 positioned ~ ~ ~1 run function aquilix:inferno/scan/z