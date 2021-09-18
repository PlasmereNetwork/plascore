#minecraft:poisonous_potato{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}
#minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}
scoreboard players set 6 items 6

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}}]}] run tag @s add building_crate

execute as @s[tag=building_crate] store result score @s items run clear @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}} 0

execute as @s[tag=building_crate] if score @s items < 6 items run tag @s remove building_crate

execute as @s[tag=!building_crate] run tellraw @s [{"text":"Sorry, but you do not have enough vote Tokens to do that!","color":"red"}]

execute as @s[tag=building_crate] run clear @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}} 6
execute as @s[tag=building_crate] run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A76Building \\u00A75Crate\"}",Lore:["\"???\""]},BlockEntityTag:{LootTable:"pc_core:crates/building"}}
execute as @s[tag=building_crate] run tellraw @s [{"text":"There you go!","color":"gold"}]

execute as @s[tag=building_crate] run tag @s remove building_crate

scoreboard players reset @s crate_building
scoreboard players enable @a crate_building
