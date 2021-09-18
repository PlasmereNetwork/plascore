#minecraft:poisonous_potato{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}
#minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}
#[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}}]}]
#[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}}]}]

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}}]}] run tag @s add tokenexchange
execute as @s[tag=tokenexchange] run setblock -69055 56 706287 redstone_block

execute as @s[tag=!tokenexchange] run tellraw @s "\u00a7cSorry, but you don't have any OLD vote tokens to exchange!"
execute as @s[tag=tokenexchange] run tellraw @s "\u00a7aYour tokens are exchanging! Enjoy the new ones... use them at \u00a76/trigger store\u00a7a!"

execute as @s[tag=tokenexchange] run schedule function store:redstone_remove 6s
tag @s remove tokenexchange

scoreboard players reset @a Token_Exchange
scoreboard players enable @a Token_Exchange
