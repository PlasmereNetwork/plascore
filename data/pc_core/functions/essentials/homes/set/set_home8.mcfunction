# Setters.
execute store result score @s xPos8 run data get entity @s Pos[0]
execute store result score @s yPos8 run data get entity @s Pos[1]
execute store result score @s zPos8 run data get entity @s Pos[2]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s dim8 -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s dim8 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s dim8 1
# Tellers.
tellraw @s [{"text":"Successfully set your 8th home to X: ","color":"green"},{"score":{"name":"@s","objective":"xPos8"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"yPos8"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"zPos8"},"color":"gold"},{"text":" in Dimension: ","color":"green"},{"score":{"name":"@s","objective":"dim8"}},{"text":"!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Set Home","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their 8th home!","color":"red"}]
# Doers.
#execute at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Home\",\"color\":\"aqua\"}",CustomNameVisible:1b,Invisible:1b,Invulnerable:1b}
#execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] UUID = @s UUID
tag @s add tplx.home.true2
tag @s add home.8
