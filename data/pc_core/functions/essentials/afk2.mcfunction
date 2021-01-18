tellraw @a [{"selector":"@s","color":"gray"},{"text":""},{"text":" is no longer AFK.","color":"white"}]

tag @s remove pc.afk

scoreboard players reset @s AFK
scoreboard players enable @a AFK
