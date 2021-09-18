# Setters.
execute store result score @s xpos3 run data get entity @s Pos[0]
execute store result score @s ypos3 run data get entity @s Pos[1]
execute store result score @s zpos3 run data get entity @s Pos[2]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s dim3 -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s dim3 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s dim3 1
# Tellers.
tellraw @s [{"text":"Successfully set your 3rd home to X: ","color":"green"},{"score":{"name":"@s","objective":"xpos3"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"ypos3"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"zpos3"},"color":"gold"},{"text":" in Dimension: ","color":"green"},{"score":{"name":"@s","objective":"dim3"}},{"text":"!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Set Home","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their 3rd home!","color":"red"}]
# Doers.
#execute at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Home\",\"color\":\"aqua\"}",CustomNameVisible:1b,Invisible:1b,Invulnerable:1b}
#execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] uuid = @s uuid
tag @s add tplx.home.true2
tag @s add home.3
