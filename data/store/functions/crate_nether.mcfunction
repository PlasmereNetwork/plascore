#minecraft:poisonous_potato{display:{Name:"{\"text\":\"vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}
#minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}

scoreboard players set 9 items 9

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}}]}] run tag @s add nether_crate

execute as @s[tag=nether_crate] store result score @s items run clear @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}} 0

execute as @s[tag=nether_crate] if score @s items < 9 items run tag @s remove nether_crate

execute as @s[tag=!nether_crate] run tellraw @s [{"text":"Sorry, but you do not have enough vote Tokens to do that!","color":"red"}]

execute as @s[tag=nether_crate] run clear @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}} 9
execute as @s[tag=nether_crate] run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74Nether \\u00A75Crate\"}",Lore:["\"???\""]},BlockEntityTag:{LootTable:"pc_core:crates/nether"}}
execute as @s[tag=nether_crate] run tellraw @s [{"text":"There you go!","color":"gold"}]

execute as @s[tag=nether_crate] run tag @s remove nether_crate

scoreboard players reset @s crate_nether
scoreboard players enable @a crate_nether
