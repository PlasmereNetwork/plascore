# Timer counter.
execute as @s[tag=!TPAing] run scoreboard players add @s TPAFind 1
# Math and figuring out which player has the correct UUID number.
execute as @s[tag=!TPAing] run scoreboard players operation TPACID Database = @p[tag=!Tried] UUID
execute as @s[tag=!TPAing] run scoreboard players operation TPAFID Database = @s TPA
execute as @s[tag=!TPAing] run scoreboard players operation TPAFID Database -= TPACID Database
execute as @s[tag=!TPAing] if score TPAFID Database matches 0 run tag @s add TPAing
execute as @s[tag=!TPAing] run tag @p[tag=!Tried] add Tried
execute as @s[tag=!TPAing] run tag @s add NoReset
execute as @s[tag=!TPAing] run scoreboard players reset @a[tag=!NoReset] TPA
execute as @s[tag=!TPAing] run tag @s remove NoReset
scoreboard players reset TPACID Database
scoreboard players reset TPAFID Database
# Tags, tells, and resets old timer then starts a new one.
execute as @s[tag=TPAing,tag=!GotTPA] run tag @p[tag=!Tried] add TPAto
execute as @s[tag=TPAing,tag=!GotTPA] at @p[tag=TPAto] run playsound minecraft:block.wood_button.click_on master @p[tag=TPAto]
execute as @s[tag=TPAing,tag=!GotTPA] at @s run playsound minecraft:block.wood_button.click_on master @s
execute as @s[tag=TPAing,tag=!GotTPA] run tellraw @p[tag=TPAto] [{"selector":"@s","color":"green"},{"text":" is wanting to teleport to you.","color":"gold"}]
execute as @s[tag=TPAing,tag=!GotTPA] run tellraw @p[tag=TPAto] [{"text":"[Accept]","color":"green","hoverEvent":{"action":"show_text","value":"\u00A7eClick to \u00A7aaccept\u00A78!"},"clickEvent":{"action":"run_command","value":"/trigger TPAccept"}},{"text":" "},{"text":"[Deny]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A7eClick to \u00A7cdeny\u00A78!"},"clickEvent":{"action":"run_command","value":"/trigger TPDeny"}}]
execute as @s[tag=TPAing,tag=!GotTPA] run tellraw @s [{"text":"The TPA request has been sent to ","color":"aqua","italic":"true"},{"selector":"@p[tag=TPAto]","color":"green","italic":"false"},{"text":".","color":"aqua","italic":"true"}]
execute as @s[tag=TPAing,tag=!GotTPA] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" is wanting to TPA to ","color":"red"},{"selector":"@p[tag=TPAto]","color":"green"},{"text":".","color":"red"}]
execute as @s[tag=TPAing,tag=!GotTPA] run scoreboard players set @s TPAFind 0
execute as @s[tag=TPAing,tag=!GotTPA] run tag @s add GotTPA
execute as @s[tag=TPAing,tag=GotTPA] run scoreboard players add @s TPARequest 1
# Resets
execute as @s[scores={TPAFind=60}] run function pc_core:essentials/tpa/tpa_request_fail
execute as @s[scores={TPARequest=300}] run function pc_core:essentials/tpa/tpa_fail

