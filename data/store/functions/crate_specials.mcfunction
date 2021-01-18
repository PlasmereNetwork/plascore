#minecraft:poisonous_potato{display:{Name:"{\"text\":\"Vote Token\",\"color\":\"aqua\"}",Lore:["{\"text\":\"Seems like it has just fallen from the sky...\"}","{\"text\":\"For use at player shops.\",\"color\":\"gold\"}"]}}
#minecraft:poisonous_potato{Enchantments:[{}],display:{Lore:['{"text":"For use at /trigger Store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"Vote Token","color":"#99ff00","italic":"false"}'}}

scoreboard players set 7 items 7

execute if entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{Enchantments:[{}],display:{Lore:['{"text":"For use at /trigger Store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"Vote Token","color":"#99ff00","italic":"false"}'}}}]}] run tag @s add specials_crate

execute as @s[tag=specials_crate] store result score @s items run clear @s minecraft:poisonous_potato{Enchantments:[{}],display:{Lore:['{"text":"For use at /trigger Store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"Vote Token","color":"#99ff00","italic":"false"}'}} 0

execute as @s[tag=specials_crate] if score @s items < 7 items run tag @s remove specials_crate

execute as @s[tag=!specials_crate] run tellraw @s [{"text":"Sorry, but you do not have enough Vote Tokens to do that!","color":"red"}]

execute as @s[tag=specials_crate] run clear @s minecraft:poisonous_potato{Enchantments:[{}],display:{Lore:['{"text":"For use at /trigger Store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"Vote Token","color":"#99ff00","italic":"false"}'}} 7
execute as @s[tag=specials_crate] run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A7bSpecials \\u00A75Crate\"}",Lore:["\"???\""]},BlockEntityTag:{LootTable:"pc_core:crates/specials"}}
execute as @s[tag=specials_crate] run tellraw @s [{"text":"There you go!","color":"gold"}]

execute as @s[tag=specials_crate] run tag @s remove specials_crate

scoreboard players reset @s Crate_Specials
scoreboard players enable @a Crate_Specials
