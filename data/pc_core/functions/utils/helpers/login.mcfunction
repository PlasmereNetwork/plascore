scoreboard players add Rejoins Stats 1
execute if entity @s[tag=!OP] run tellraw @a [{"text":"Welcome back to ","color":"red"},{"text":"Plasmere","color":"red"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"}]
execute store result score Players-Online Stats run execute if entity @a
execute store result score YouTubers-Online Stats run execute if entity @a[tag=YT]
execute as @a at @s run playsound minecraft:block.note.xylophone master @s
scoreboard players add @a Karma 30
scoreboard players reset @s Login
bossbar set minecraft:templex players @a
