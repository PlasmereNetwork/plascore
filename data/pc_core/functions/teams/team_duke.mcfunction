tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the "},{"text":"Duke \u00A7crank\u00A78!","color":"#0f611a"}]
execute as @s run ranktoself 702 s
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.05 1
team join 702 @s