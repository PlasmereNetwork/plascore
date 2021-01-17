# Players who have the TPAto tag.
execute as @s[tag=TPAto] at @p[tag=TPAing] at @e[distance=..5,type=!player] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run teleport @e[distance=..5,type=!player,type=!item] @s
execute as @s[tag=TPAto] at @p[tag=TPAing] as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run kill @s
execute as @s[tag=TPAto] at @s run tp @p[tag=TPAing] @s
execute as @s[tag=TPAto] run tellraw @p[tag=TPAing] [{"text":"Successfully teleported you to ","color":"gold"},{"selector":"@s","color":"green"},{"text":"!","color":"gold"}]
execute as @s[tag=TPAto] run tellraw @s [{"text":"Successfully teleported ","color":"gold"},{"selector":"@p[tag=TPAing]","color":"green"},{"text":" to you!","color":"gold"}]
execute as @s[tag=TPAto] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully teleported ","color":"red"},{"selector":"@p[tag=TPAing]","color":"green"},{"text":" to ","color":"red"},{"selector":"@s","color":"green"},{"text":"!","color":"red"}]
execute as @s[tag=TPAto] run scoreboard players set @s TPAccept 0
execute as @s[tag=TPAto] run scoreboard players set @a TPA 0
execute as @s[tag=TPAto] run scoreboard players set @a TPARequest 0
execute as @s[tag=TPAto] run scoreboard players set @a TPAFind 0
execute as @s[tag=TPAto] run scoreboard players enable @a TPA
execute as @s[tag=TPAto] run scoreboard players enable @a TPAccept
execute as @s[tag=TPAto] run scoreboard players enable @a TPDeny
execute as @s[tag=TPAto] run tag @a remove Tried
execute as @s[tag=TPAto] run tag @a remove GotTPA
execute as @s[tag=TPAto] run tag @a remove TPAing
execute as @s[tag=TPAto] run tag @a remove tpa_removed
execute as @s[tag=TPAto] run tag @a remove tpa_yep
# Players who do not have the TPAto tag.
execute as @s[tag=!TPAto] run tellraw @s [{"text":"TPAccept failed! Either you don't have any requests or the requester logged off.","color":"red"}]
execute as @s[tag=!TPAto] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to accept a TPA, but either didn't have any requests or the requester logged off.","color":"red"}]
# TPAccept reset.
scoreboard players set @s TPAccept 0
scoreboard players enable @a TPAccept
execute as @s[tag=TPAto] run tag @a remove TPAto
# Teller.
execute as @a[tag=TPAing] at @s run tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"},{"text":" TPAs...","color":"dark_green"}]
