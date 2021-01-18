#minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}

scoreboard players set 12 items 12

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}}]}] run tag @s add epic_crate

execute as @s[tag=epic_crate] store result score @s items run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 0

execute as @s[tag=epic_crate] if score @s items < 12 items run tag @s remove epic_crate

execute as @s[tag=!epic_crate] run tellraw @s [{"text":"Sorry, but you do not have enough Vote Tokens to do that!","color":"red"}]

execute as @s[tag=epic_crate] run clear @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}} 12
execute as @s[tag=epic_crate] run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74Epic \\u00A75Crate\"}",Lore:["\"???\""]},BlockEntityTag:{LootTable:"pc_core:crates/epic"}}
execute as @s[tag=epic_crate] run tellraw @s [{"text":"There you go!","color":"gold"}]

execute as @s[tag=epic_crate] run tag @s remove epic_crate

scoreboard players reset @s Buy_Crate_Epic
scoreboard players enable @a Buy_Crate_Epic
