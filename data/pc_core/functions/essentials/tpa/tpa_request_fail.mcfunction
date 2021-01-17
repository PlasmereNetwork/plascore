tellraw @s [{"text":"We didn't find that player... Either they aren't online or you didn't supply the correct UUID number... Sorry.","color":"red"}]
tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to TPA to a UUID of ","color":"red"},{"score":{"name":"@s","objective":"TPA"}},{"text":", but the system couldn't find them.","color":"red"}]
scoreboard players reset TPACID Database
scoreboard players reset TPAFID Database
tag @a remove Tried
tag @a remove TPAto
tag @a remove TPAing
tag @a remove GotTPA
tag @a remove tpa_removed
tag @a remove tpa_yep
scoreboard players add @s TPAs 1
scoreboard players set @a TPA 0
scoreboard players enable @a TPA
scoreboard players enable @a TPAccept
scoreboard players set @a TPAFind 0
tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"},{"text":" TPAs...","color":"dark_green"}]

