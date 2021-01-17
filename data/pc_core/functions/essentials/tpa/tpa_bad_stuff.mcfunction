# Doers.
execute as @s[scores={TPAs=1..}] at @s run tag @s add tpa_yep
execute as @s[scores={TPA=..0}] at @s run tag @s add tpa_nope
# tpa_yep
execute as @s[tag=tpa_yep] as @s[tag=!tpa_removed] at @s run scoreboard players remove @s TPAs 1
execute as @s[tag=tpa_yep] as @s[tag=!tpa_removed] at @s run tellraw @s [{"text":"You now have ","color":"dark_green"},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"},{"text":" TPAs...","color":"dark_green"}]
execute as @s[tag=tpa_yep] as @s[tag=!tpa_removed] at @s run tag @s add tpa_removed
execute as @s[tag=tpa_yep] at @s run function pc_core:tpa_forwarded
# tpa_nope
execute as @s[tag=tpa_nope] at @s run tellraw @s [{"text":"Sorry, but you don't have enough TPAs to do that!","color":"red"},{"text":"\nDo \u00A75\"\u00A7b/trigger BuyTPA\u00A75\" \u00A76(\u00A74Once you have 125 \u00A7cTC\u00A76) \u00A72to buy another TPA...","color":"dark_green"}]
execute as @s[tag=tpa_nope] at @s run tellraw @a[tag=OP] [{"text":"\u00A76TPA Try System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to use the TPA System, but didn't have enough TPAs...","color":"red"}]
execute as @s[tag=tpa_nope] at @s run tag @s remove tpa_nope
