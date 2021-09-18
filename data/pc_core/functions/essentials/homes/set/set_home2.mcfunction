# Setters.
execute store result score @s xpos2 run data get entity @s Pos[0]
execute store result score @s ypos2 run data get entity @s Pos[1]
execute store result score @s zpos2 run data get entity @s Pos[2]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s dim2 -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s dim2 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s dim2 1
# Tellers.
tellraw @s [{"text":"Successfully set your 2nd home to X: ","color":"green"},{"score":{"name":"@s","objective":"xpos2"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"ypos2"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"zpos2"},"color":"gold"},{"text":" in Dimension: ","color":"green"},{"score":{"name":"@s","objective":"dim2"}},{"text":"!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Set Home","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their 2nd home!","color":"red"}]
# Doers.
#execute at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Home\",\"color\":\"aqua\"}",CustomNameVisible:1b,Invisible:1b,Invulnerable:1b}
#execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] uuid = @s uuid
tag @s add tplx.home.true2
tag @s add home.2
