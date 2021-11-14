tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the "},{"text":"Viscount \u00A7crank\u00A78!","color":"#3c1170"}]
execute as @s run ranktoself 703 s
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.05 1
team join 703 @s