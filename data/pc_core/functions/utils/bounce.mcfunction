tellraw @s [{"text":"Sorry, but you may not leave the spawn area by foot. It is for your own builds' safety! Do \u00A75/\u00A7etrigger \u00A7drtp \u00A7cinstead! This will teleport you out far enough that only those who you tpa to your base will be able to touch you. ;)","color":"red"}]
tellraw @a[tag=OP] [{"selector":"@s","color":"green"},{"text":" tried to leave spawn by foot!","color":"red"}]
execute as @s at @s run scoreboard players set @s spawn 1
