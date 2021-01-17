execute as @s[scores={Karma=..999}] run tellraw @a[tag=OP] [{"text":"BuyRTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy another RTP, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[scores={Karma=..999}] run tellraw @s [{"text":"You don't have enough Karma to buy this!","color":"red"},{"text":"\n\u00A77Current \u00A74RTPs\u00A78: "},{"score":{"name":"@s","objective":"RTPs"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]

execute as @s[scores={Karma=1000..}] run tag @s add BuyingRTP
execute as @s[tag=BuyingRTP] run scoreboard players add @s RTPs 1
execute as @s[tag=BuyingRTP] run scoreboard players remove @s Karma 1000
execute as @s[tag=BuyingRTP] run tellraw @a[tag=OP] [{"text":"BuyRTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just added 1 RTP to ","color":"red"},{"selector":"@s"},{"text":"'s profile.","color":"red"}]
execute as @s[tag=BuyingRTP] run tellraw @s [{"text":"Successfully bought one RTP!","color":"green","italic":"true"},{"text":"\n\u00A77Current \u00A74RTPs\u00A78: "},{"score":{"name":"@s","objective":"RTPs"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]
execute as @s[tag=BuyingRTP] run tag @s remove BuyingRTP

scoreboard players reset @s BuyRTP
scoreboard players enable @a BuyRTP
