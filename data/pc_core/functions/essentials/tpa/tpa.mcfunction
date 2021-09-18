# Timer counter.
execute as @s[tag=!tpaing] run scoreboard players add @s tpafind 1
# Math and figuring out which player has the correct uuid number.
execute as @s[tag=!tpaing] run scoreboard players operation tpaCID Database = @p[tag=!Tried] uuid
execute as @s[tag=!tpaing] run scoreboard players operation tpaFID Database = @s tpa
execute as @s[tag=!tpaing] run scoreboard players operation tpaFID Database -= tpaCID Database
execute as @s[tag=!tpaing] if score tpaFID Database matches 0 run tag @s add tpaing
execute as @s[tag=!tpaing] run tag @p[tag=!Tried] add Tried
execute as @s[tag=!tpaing] run tag @s add NoReset
execute as @s[tag=!tpaing] run scoreboard players reset @a[tag=!NoReset] tpa
execute as @s[tag=!tpaing] run tag @s remove NoReset
scoreboard players reset tpaCID Database
scoreboard players reset tpaFID Database
# Tags, tells, and resets old timer then starts a new one.
execute as @s[tag=tpaing,tag=!Gottpa] run tag @p[tag=!Tried] add tpato
execute as @s[tag=tpaing,tag=!Gottpa] at @p[tag=tpato] run playsound minecraft:block.wood_button.click_on master @p[tag=tpato]
execute as @s[tag=tpaing,tag=!Gottpa] at @s run playsound minecraft:block.wood_button.click_on master @s
execute as @s[tag=tpaing,tag=!Gottpa] run tellraw @p[tag=tpato] [{"selector":"@s","color":"green"},{"text":" is wanting to teleport to you.","color":"gold"}]
execute as @s[tag=tpaing,tag=!Gottpa] run tellraw @p[tag=tpato] [{"text":"[Accept]","color":"green","hoverEvent":{"action":"show_text","value":"\u00A7eClick to \u00A7aaccept\u00A78!"},"clickEvent":{"action":"run_command","value":"/trigger tpaccept"}},{"text":" "},{"text":"[Deny]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A7eClick to \u00A7cdeny\u00A78!"},"clickEvent":{"action":"run_command","value":"/trigger tpdeny"}}]
execute as @s[tag=tpaing,tag=!Gottpa] run tellraw @s [{"text":"The tpa request has been sent to ","color":"aqua","italic":"true"},{"selector":"@p[tag=tpato]","color":"green","italic":"false"},{"text":".","color":"aqua","italic":"true"}]
execute as @s[tag=tpaing,tag=!Gottpa] run tellraw @a[tag=OP] [{"text":"New tpa System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" is wanting to tpa to ","color":"red"},{"selector":"@p[tag=tpato]","color":"green"},{"text":".","color":"red"}]
execute as @s[tag=tpaing,tag=!Gottpa] run scoreboard players set @s tpafind 0
execute as @s[tag=tpaing,tag=!Gottpa] run tag @s add Gottpa
execute as @s[tag=tpaing,tag=Gottpa] run scoreboard players add @s tparequest 1
# Resets
execute as @s[scores={tpafind=60}] run function pc_core:essentials/tpa/tpa_request_fail
execute as @s[scores={tparequest=300}] run function pc_core:essentials/tpa/tpa_fail

