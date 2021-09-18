tellraw @s [{"text":"We didn't find that player... Either they aren't online or you didn't supply the correct uuid number... Sorry.","color":"red"}]
tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to tpa to a uuid of ","color":"red"},{"score":{"name":"@s","objective":"tpa"}},{"text":", but the system couldn't find them.","color":"red"}]
scoreboard players reset tpaCID Database
scoreboard players reset tpaFID Database
tag @a remove Tried
tag @a remove tpato
tag @a remove tpaing
tag @a remove Gottpa
tag @a remove tpa_removed
tag @a remove tpa_yep
scoreboard players add @s tpas 1
scoreboard players set @a tpa 0
scoreboard players enable @a tpa
scoreboard players enable @a tpaccept
scoreboard players set @a tpafind 0
tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"tpas"},"color":"gold"},{"text":" tpas...","color":"dark_green"}]

