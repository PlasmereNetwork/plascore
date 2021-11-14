tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A7dExpeditioner \u00A7crank\u00A78!"}]
execute as @s run ranktoself 709 s
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.05 1
team join 709 @s