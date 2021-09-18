tellraw @s [{"text":"tpaccept failed! Either you don't have any requests or the requester logged off.","color":"red"}]
tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to accept a tpa, but either didn't have any requests or the requester logged off.","color":"red"}]
scoreboard players set @s tpaccept 0
scoreboard players enable @a tpaccept
