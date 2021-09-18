# Players who have the tpato tag.
execute as @s[tag=tpato] at @p[tag=tpaing] at @e[distance=..5,type=!player] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run teleport @e[distance=..5,type=!player,type=!item] @s
execute as @s[tag=tpato] at @p[tag=tpaing] as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run kill @s
execute as @s[tag=tpato] at @s run tp @p[tag=tpaing] @s
execute as @s[tag=tpato] run tellraw @p[tag=tpaing] [{"text":"Successfully teleported you to ","color":"gold"},{"selector":"@s","color":"green"},{"text":"!","color":"gold"}]
execute as @s[tag=tpato] run tellraw @s [{"text":"Successfully teleported ","color":"gold"},{"selector":"@p[tag=tpaing]","color":"green"},{"text":" to you!","color":"gold"}]
execute as @s[tag=tpato] run tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully teleported ","color":"red"},{"selector":"@p[tag=tpaing]","color":"green"},{"text":" to ","color":"red"},{"selector":"@s","color":"green"},{"text":"!","color":"red"}]
execute as @s[tag=tpato] run scoreboard players set @s tpaccept 0
execute as @s[tag=tpato] run scoreboard players set @a tpa 0
execute as @s[tag=tpato] run scoreboard players set @a tparequest 0
execute as @s[tag=tpato] run scoreboard players set @a tpafind 0
execute as @s[tag=tpato] run scoreboard players enable @a tpa
execute as @s[tag=tpato] run scoreboard players enable @a tpaccept
execute as @s[tag=tpato] run scoreboard players enable @a tpdeny
execute as @s[tag=tpato] run tag @a remove Tried
execute as @s[tag=tpato] run tag @a remove Gottpa
execute as @s[tag=tpato] run tag @a remove tpaing
execute as @s[tag=tpato] run tag @a remove tpa_removed
execute as @s[tag=tpato] run tag @a remove tpa_yep
# Players who do not have the tpato tag.
execute as @s[tag=!tpato] run tellraw @s [{"text":"tpaccept failed! Either you don't have any requests or the requester logged off.","color":"red"}]
execute as @s[tag=!tpato] run tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to accept a tpa, but either didn't have any requests or the requester logged off.","color":"red"}]
# tpaccept reset.
scoreboard players set @s tpaccept 0
scoreboard players enable @a tpaccept
execute as @s[tag=tpato] run tag @a remove tpato
# Teller.
execute as @a[tag=tpaing] at @s run tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"tpas"},"color":"gold"},{"text":" tpas...","color":"dark_green"}]
