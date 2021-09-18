# Setters.
kill @e[type=armor_stand,limit=1,tag=spawn]

execute as @s store result score spawnx Database run data get entity @s Pos[0]
execute as @s store result score spawny Database run data get entity @s Pos[1]
execute as @s store result score spawnz Database run data get entity @s Pos[2]

execute at @s if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set spawnd Database -1
execute at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set spawnd Database 0
execute at @s if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set spawnd Database 1

summon armor_stand ~ ~ ~ {Tags:["spawn"],Invisible:1b,Invulnerable:1b,NoGravity:1b}

setworldspawn ~ ~ ~
# Tellers.
tellraw @s [{"text":"Successfully set spawn to X: ","color":"green"},{"score":{"name":"spawnx","objective":"Database"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"spawny","objective":"Database"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"spawnz","objective":"Database"},"color":"gold"},{"text":"!","color":"green"}]
tellraw @a[tag=sky.perm.admin] [{"text":"spawn","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set spawn!","color":"red"}]
# Reset.
scoreboard players reset @s setspawn
scoreboard players enable @a[tag=OP] setspawn