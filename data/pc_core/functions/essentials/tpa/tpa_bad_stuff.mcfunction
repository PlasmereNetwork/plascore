# Doers.
execute as @s[scores={tpas=1..}] at @s run tag @s add tpa_yep
execute as @s[scores={tpa=..0}] at @s run tag @s add tpa_nope
# tpa_yep
execute as @s[tag=tpa_yep] as @s[tag=!tpa_removed] at @s run scoreboard players remove @s tpas 1
execute as @s[tag=tpa_yep] as @s[tag=!tpa_removed] at @s run tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"tpas"},"color":"gold"},{"text":" tpas...","color":"dark_green"}]
execute as @s[tag=tpa_yep] as @s[tag=!tpa_removed] at @s run tag @s add tpa_removed
execute as @s[tag=tpa_yep] at @s run function pc_core:essentials/tpa/tpa_forwarded
# tpa_nope
execute as @s[tag=tpa_nope] at @s run tellraw @s [{"text":"Sorry, but you don't have enough tpas to do that!","color":"red"},{"text":"\nDo \u00A75\"\u00A7b/trigger Buytpa\u00A75\" \u00A76(\u00A74Once you have 125 \u00A7cTC\u00A76) \u00A72to buy another tpa...","color":"dark_green"}]
execute as @s[tag=tpa_nope] at @s run tellraw @a[tag=OP] [{"text":"\u00A76tpa Try System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to use the tpa System, but didn't have enough tpas...","color":"red"}]
execute as @s[tag=tpa_nope] at @s run tag @s remove tpa_nope
