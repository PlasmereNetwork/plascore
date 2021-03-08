# Don't have enough Karma.
execute as @s[scores={Karma=..4999},tag=!bought_end] run tellraw @s [{"text":"You do not have enough Karma!\nYou need at least 5,000 Karma to buy this. Once you buy it, you have it forever.","color":"red"}]
execute as @s[scores={Karma=..4999},tag=!bought_end] run tellraw @a[tag=OP] [{"selector":"@s","color":"green"},{"text":" has tried to buy permanent access to the End, but does not have enough Karma.\n","color":"red"},{"text":"They currently have ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma...","color":"gray"}]
# While having 5,000+ KP without having already bought access.
execute as @s[scores={Karma=5000..},tag=!bought_end] run tellraw @a [{"selector":"@s","color":"green"},{"text":" has just bought permanent access to the End for \u00A765,000 \u00A74Karma \u00A74Points\u00A78.","color":"gold"}]
execute as @s[scores={Karma=5000..},tag=!bought_end] run tellraw @s [{"text":"Successfully bought permanent access to the End!","color":"green","italic":"true"}]
execute as @s[scores={Karma=5000..},tag=!bought_end] run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.1 1 1
execute as @s[scores={Karma=5000..},tag=!bought_end] run tag @s add getBoughtEnd
execute as @s[scores={Karma=5000..},tag=!bought_end] run scoreboard players remove @s Karma 5000
execute as @s[tag=getBoughtEnd] run tag @s add bought_end
execute as @s[tag=getBoughtEnd] run tag @s remove getBoughtEnd
# If you have already bought access.
execute as @s[tag=bought_end] run function pc_core:essentials/try/tp_end_confirm
# Reset.
scoreboard players set @s TPEnd 0
scoreboard players enable @a TPEnd
