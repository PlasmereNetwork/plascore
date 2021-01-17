# Tagging and outputting.
execute if entity @s[tag=!Zeroed] run scoreboard players set @s UUID 0
scoreboard players add CurrUUID Database 1
scoreboard players add Current-UUID Stats 1
scoreboard players operation @s UUID = CurrUUID Database
tellraw @a[tag=OP] [{"text":"Tagger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just tagged ","color":"red"},{"selector":"@s"},{"text":" with UUID: ","color":"red"},{"score":{"name":"CurrUUID","objective":"Database"}}]
execute if entity @s[tag=!Zeroed] run tag @s add Zeroed
# Tagging.
tag @s add ThisUUID
