tellraw @a [{"selector":"@s","color":"gray"},{"text":""},{"text":" is now AFK.","color":"white"}]

tag @s add pc.afk

scoreboard players reset @s AFK
scoreboard players enable @a AFK
