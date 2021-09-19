# Tagging and outputting.
execute if entity @s[tag=!Zeroed] run scoreboard players set @s uuid 0
scoreboard players add Curruuid Database 1
scoreboard players add Current-uuid Stats 1
scoreboard players operation @s uuid = Curruuid Database
tellraw @a[tag=OP] [{"text":"Tagger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just tagged ","color":"red"},{"selector":"@s"},{"text":" with uuid: ","color":"red"},{"score":{"name":"Curruuid","objective":"Database"}}]
execute if entity @s[tag=!Zeroed] run tag @s add Zeroed
# Tagging.
tag @s add Thisuuid
