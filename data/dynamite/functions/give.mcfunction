clear @s minecraft:knowledge_book 1
give @s splash_potion{display:{Name:'{"text":"Dynamite","color":"red","italic":false}',Lore:['{"text":"Explosive","color":"gray","italic":false}']},HideFlags:32,power:2,Potion:"minecraft:water",CustomPotionColor:16711680} 1
advancement revoke @s only dynamite:craft_dynamite
recipe take @s dynamite:dynamite
