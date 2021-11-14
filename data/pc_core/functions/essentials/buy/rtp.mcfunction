execute as @s[scores={Karma=..999}] run tellraw @a[tag=OP] [{"text":"Buyrtp System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy another rtp, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir rtps: ","color":"gray"},{"score":{"name":"@s","objective":"rtps"},"color":"gold"}]
execute as @s[scores={Karma=..999}] run tellraw @s [{"text":"You don't have enough Karma to buy this!","color":"red"},{"text":"\n\u00A77Current \u00A74rtps\u00A78: "},{"score":{"name":"@s","objective":"rtps"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]

execute as @s[scores={Karma=1000..}] run tag @s add Buyingrtp
execute as @s[tag=Buyingrtp] run rtp add @s 1
execute as @s[tag=Buyingrtp] run scoreboard players remove @s Karma 1000
execute as @s[tag=Buyingrtp] run tellraw @a[tag=OP] [{"text":"Buyrtp System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just added 1 rtp to ","color":"red"},{"selector":"@s"},{"text":"'s profile.","color":"red"}]
execute as @s[tag=Buyingrtp] run tellraw @s [{"text":"Successfully bought one rtp!","color":"green","italic":"true"},{"text":"\n\u00A77Current \u00A74rtps\u00A78: "},{"score":{"name":"@s","objective":"rtps"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]
execute as @s[tag=Buyingrtp] run tag @s remove Buyingrtp
