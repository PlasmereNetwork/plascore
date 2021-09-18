execute if entity @s[team=101] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"dark_gray"},{"text":"> ¯\\_(ツ)_/¯","color":"white"}]
execute if entity @s[team=100] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> ¯\\_(ツ)_/¯","color":"white"}]
execute if entity @s[team=!101,team=!100] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"gray"},{"text":"> ¯\\_(ツ)_/¯","color":"white"}]

scoreboard players reset @s shrug
scoreboard players enable @a shrug
