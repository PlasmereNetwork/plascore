#minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}

scoreboard players set 6 items 6

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}}]}] run tag @s add rare_crate

execute as @s[tag=rare_crate] store result score @s items run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 0

execute as @s[tag=rare_crate] if score @s items < 6 items run tag @s remove rare_crate

execute as @s[tag=!rare_crate] run tellraw @s [{"text":"Sorry, but you do not have enough Vote Tokens to do that!","color":"red"}]

execute as @s[tag=rare_crate] run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 6
execute as @s[tag=rare_crate] run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A79Rare \\u00A75Crate\"}",Lore:["\"???\""]},BlockEntityTag:{LootTable:"templex_standard:crates/rare"}}
execute as @s[tag=rare_crate] run tellraw @s [{"text":"There you go!","color":"gold"}]

execute as @s[tag=rare_crate] run tag @s remove rare_crate

scoreboard players reset @s Buy_Crate_Rare
scoreboard players enable @a Buy_Crate_Rare
