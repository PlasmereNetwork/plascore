# Players with the tpato tag.
execute as @s[tag=tpato] run tellraw @p[tag=tpaing] [{"selector":"@s","color":"green"},{"text":" has denied your tpa request. Sorry.","color":"red"}]
execute as @s[tag=tpato] run tellraw @s [{"text":"Sucessfully denied the tpa request from ","color":"aqua","italic":"true"},{"selector":"@p[tag=tpaing]","color":"green","italic":"false"},{"text":".","color":"aqua","italic":"true"}]
execute as @s[tag=tpato] run tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just denied ","color":"red"},{"selector":"@p[tag=tpaing]","color":"green"},{"text":"'s tpa request.","color":"red"}]
execute as @s[tag=tpato] run scoreboard players set @a tpa 0
execute as @s[tag=tpato] run scoreboard players set @a tparequest 0
execute as @s[tag=tpato] run scoreboard players set @a tpafind 0
execute as @s[tag=tpato] run scoreboard players enable @a tpa
execute as @s[tag=tpato] run scoreboard players enable @a tpaccept
execute as @s[tag=tpato] run scoreboard players enable @a tpdeny
execute as @s[tag=tpato] run tag @a remove tpaing
execute as @s[tag=tpato] run tag @a remove Tried
execute as @s[tag=tpato] run tag @a remove Gottpa
# Players without the tpato tag.
execute as @s[tag=!tpato] run tellraw @s [{"text":"tpdeny request failed! Either you don't have any requests or the requester logged off.","color":"red"}]
execute as @s[tag=!tpato] run tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to deny a tpa request, but either didn't have any requests or the requester logged off.","color":"red"}]
# tpdeny reset.
scoreboard players set @s tpdeny 0
scoreboard players enable @a tpdeny
execute as @s[tag=tpato] run tag @a remove tpato
