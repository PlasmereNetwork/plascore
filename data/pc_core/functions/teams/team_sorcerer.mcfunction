tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the "},{"text":"Sorcerer \u00A7crank\u00A78!","color":"#d18708"}]
execute as @s run ranktoself 705 s
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.05 1
team join 705 @s