tellraw @s [{"text":"TPA request to ","color":"red"},{"selector":"@p[tag=TPAto]","color":"green"},{"text":" timed out after fifteen seconds...","color":"red"}]
tellraw @p[tag=TPAto] [{"text":"TPA request from ","color":"red"},{"selector":"@p[tag=TPAing]","color":"green"},{"text":" timed out after fifteen seconds...","color":"red"}]
tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@p[tag=TPAing]","color":"green"},{"text":" wanted to TPA to ","color":"red"},{"selector":"@p[tag=TPAto]","color":"green"},{"text":", but the TPA timed out...","color":"red"}]
tag @a remove TPAing
tag @a remove TPAto
tag @a remove Tried
tag @a remove GotTPA
tag @a remove tpa_removed
tag @a remove tpa_yep
scoreboard players add @s TPAs 1
scoreboard players enable @a TPA
scoreboard players enable @a TPAccept
scoreboard players set @a TPA 0
scoreboard players set @a TPARequest 0
tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"},{"text":" TPAs...","color":"dark_green"}]
