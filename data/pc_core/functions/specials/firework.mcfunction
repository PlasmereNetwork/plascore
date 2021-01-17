execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:80,Damage:0s}
tellraw @a[tag=OP] [{"text":"Firework System (For Donors)","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just set off a firework!","color":"red"}]
tellraw @s [{"text":"And it's away!","color":"green"}]

scoreboard players enable @a[tag=special] Firework
scoreboard players set @s Firework 0
