scoreboard players set x inferno.scan 0
scoreboard players add y inferno.scan 1
function aquilix:inferno/scan/x
execute if score y inferno.scan matches ..4 positioned ~ ~1 ~ run function aquilix:inferno/scan/y