#minecraft:poisonous_potato{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}
#minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}

scoreboard players set 1 items 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}}]}] run tag @s add token_exchange

execute as @s[tag=token_exchange] store result score @s items run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 0

execute as @s[tag=token_exchange] if score @s items < 1 items run tag @s remove token_exchange

execute as @s[tag=!token_exchange] run tellraw @s [{"text":"Sorry, but you do not have any vote Tokens to do exchange!","color":"red"}]

execute as @s[tag=token_exchange] run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 1
execute as @s[tag=token_exchange] run give @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}
execute as @s[tag=token_exchange] run tellraw @s [{"text":"There you go! Enjoy your new vote Token; you are able to use it at /trigger store!","color":"gold"}]

execute as @s[tag=token_exchange] run tag @s remove token_exchange

scoreboard players reset @s Token_Exchange
scoreboard players enable @a Token_Exchange
