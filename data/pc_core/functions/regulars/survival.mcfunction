gamemode survival @s
tellraw @a[tag=OP] [{"text":"Survival Trigger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just set ","color":"red"},{"selector":"@s","color":"green"},{"text":"'s gamemode to Survival","color":"red"}]
tellraw @s [{"text":"Your gamemode is now set to Survival!","color":"blue"}]
playsound minecraft:block.note.xylophone master @s
scoreboard players enable @a Survival
scoreboard players set @s Survival 0
