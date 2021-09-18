# Setters.
execute store result score @s xpos5 run data get entity @s Pos[0]
execute store result score @s ypos5 run data get entity @s Pos[1]
execute store result score @s zpos5 run data get entity @s Pos[2]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s dim5 -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s dim5 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s dim5 1
# Tellers.
tellraw @s [{"text":"Successfully set your 5th home to X: ","color":"green"},{"score":{"name":"@s","objective":"xpos5"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"ypos5"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"zpos5"},"color":"gold"},{"text":" in Dimension: ","color":"green"},{"score":{"name":"@s","objective":"dim5"}},{"text":"!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Set Home","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their 5th home!","color":"red"}]
# Doers.
#execute at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Home\",\"color\":\"aqua\"}",CustomNameVisible:1b,Invisible:1b,Invulnerable:1b}
#execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] uuid = @s uuid
tag @s add tplx.home.true2
tag @s add home.5
