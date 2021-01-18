#minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}

scoreboard players set 3 items 3

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}}]}] run tag @s add basic_crate

execute as @s[tag=basic_crate] store result score @s items run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 0

execute as @s[tag=basic_crate] if score @s items < 3 items run tag @s remove basic_crate

execute as @s[tag=!basic_crate] run tellraw @s [{"text":"Sorry, but you do not have enough Vote Tokens to do that!","color":"red"}]

execute as @s[tag=basic_crate] run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 3
execute as @s[tag=basic_crate] run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A7aBasic \\u00A75Crate\"}",Lore:["\"???\""]},BlockEntityTag:{LootTable:"pc_core:crates/basic"}}
execute as @s[tag=basic_crate] run tellraw @s [{"text":"There you go!","color":"gold"}]

execute as @s[tag=basic_crate] run tag @s remove basic_crate

scoreboard players reset @s Buy_Crate_Basic
scoreboard players enable @a Buy_Crate_Basic
