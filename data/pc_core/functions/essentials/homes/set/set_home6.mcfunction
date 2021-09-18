# Setters.
execute store result score @s xpos6 run data get entity @s Pos[0]
execute store result score @s ypos6 run data get entity @s Pos[1]
execute store result score @s zpos6 run data get entity @s Pos[2]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s dim6 -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s dim6 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s dim6 1
# Tellers.
tellraw @s [{"text":"Successfully set your 6th home to X: ","color":"green"},{"score":{"name":"@s","objective":"xpos6"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"ypos6"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"zpos6"},"color":"gold"},{"text":" in Dimension: ","color":"green"},{"score":{"name":"@s","objective":"dim6"}},{"text":"!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Set Home","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their 6th home!","color":"red"}]
# Doers.
#execute at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Home\",\"color\":\"aqua\"}",CustomNameVisible:1b,Invisible:1b,Invulnerable:1b}
#execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] uuid = @s uuid
tag @s add tplx.home.true2
tag @s add home.6
