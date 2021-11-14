tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A7bVillager \u00A7crank\u00A78!"}]
execute as @s run ranktoself 711 s
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.05 1
team join 711 @s