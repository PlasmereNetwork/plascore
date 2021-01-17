tellraw @s [{"text":"TPAccept failed! Either you don't have any requests or the requester logged off.","color":"red"}]
tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to accept a TPA, but either didn't have any requests or the requester logged off.","color":"red"}]
scoreboard players set @s TPAccept 0
scoreboard players enable @a TPAccept
