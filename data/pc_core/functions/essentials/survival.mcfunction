gamemode survival @s
tellraw @a[tag=OP] [{"text":"gm.survival Trigger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just set ","color":"red"},{"selector":"@s","color":"green"},{"text":"'s gamemode to gm.survival","color":"red"}]
tellraw @s [{"text":"Your gamemode is now set to gm.survival!","color":"blue"}]
playsound minecraft:block.note.xylophone master @s
scoreboard players enable @a gm.survival
scoreboard players set @s gm.survival 0
