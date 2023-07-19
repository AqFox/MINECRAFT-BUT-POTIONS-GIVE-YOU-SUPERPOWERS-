gamerule showDeathMessages false
kill @s
tellraw @a ["",{"selector":"@s"},{"text":" got electicuted in water"}]
tp @s ~ -256 ~
gamerule showDeathMessages true