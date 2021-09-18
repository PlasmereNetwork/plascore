tellraw @s [{"text":"tpa request to ","color":"red"},{"selector":"@p[tag=tpato]","color":"green"},{"text":" timed out after fifteen seconds...","color":"red"}]
tellraw @p[tag=tpato] [{"text":"tpa request from ","color":"red"},{"selector":"@p[tag=tpaing]","color":"green"},{"text":" timed out after fifteen seconds...","color":"red"}]
tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@p[tag=tpaing]","color":"green"},{"text":" wanted to tpa to ","color":"red"},{"selector":"@p[tag=tpato]","color":"green"},{"text":", but the tpa timed out...","color":"red"}]
tag @a remove tpaing
tag @a remove tpato
tag @a remove Tried
tag @a remove Gottpa
tag @a remove tpa_removed
tag @a remove tpa_yep
scoreboard players add @s tpas 1
scoreboard players enable @a tpa
scoreboard players enable @a tpaccept
scoreboard players set @a tpa 0
scoreboard players set @a tparequest 0
tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"tpas"},"color":"gold"},{"text":" tpas...","color":"dark_green"}]
