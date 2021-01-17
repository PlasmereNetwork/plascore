# Players with the TPAto tag.
execute as @s[tag=TPAto] run tellraw @p[tag=TPAing] [{"selector":"@s","color":"green"},{"text":" has denied your TPA request. Sorry.","color":"red"}]
execute as @s[tag=TPAto] run tellraw @s [{"text":"Sucessfully denied the TPA request from ","color":"aqua","italic":"true"},{"selector":"@p[tag=TPAing]","color":"green","italic":"false"},{"text":".","color":"aqua","italic":"true"}]
execute as @s[tag=TPAto] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just denied ","color":"red"},{"selector":"@p[tag=TPAing]","color":"green"},{"text":"'s TPA request.","color":"red"}]
execute as @s[tag=TPAto] run scoreboard players set @a TPA 0
execute as @s[tag=TPAto] run scoreboard players set @a TPARequest 0
execute as @s[tag=TPAto] run scoreboard players set @a TPAFind 0
execute as @s[tag=TPAto] run scoreboard players enable @a TPA
execute as @s[tag=TPAto] run scoreboard players enable @a TPAccept
execute as @s[tag=TPAto] run scoreboard players enable @a TPDeny
execute as @s[tag=TPAto] run tag @a remove TPAing
execute as @s[tag=TPAto] run tag @a remove Tried
execute as @s[tag=TPAto] run tag @a remove GotTPA
# Players without the TPAto tag.
execute as @s[tag=!TPAto] run tellraw @s [{"text":"TPDeny request failed! Either you don't have any requests or the requester logged off.","color":"red"}]
execute as @s[tag=!TPAto] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to deny a TPA request, but either didn't have any requests or the requester logged off.","color":"red"}]
# TPDeny reset.
scoreboard players set @s TPDeny 0
scoreboard players enable @a TPDeny
execute as @s[tag=TPAto] run tag @a remove TPAto
