execute as @s[scores={Karma=1500..}] at @s run summon minecraft:experience_orb ~ ~1 ~ {Value:500,Invulnerable:1}
execute as @s[scores={Karma=1500..}] run tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully gave ","color":"red"},{"selector":"@s"},{"text":" 500","color":"gold"},{"text":" XP in exchange for ","color":"red"},{"text":"1500","color":"gold"},{"text":" Karma!","color":"red"}]
execute as @s[scores={Karma=1500..}] run tellraw @s [{"text":"Successfully bought ","color":"green"},{"text":"500","color":"gold"},{"text":" XP for ","color":"green"},{"text":"1500","color":"gold"},{"text":" Karma!","color":"green"}]
execute as @s[scores={Karma=1500..}] run scoreboard players remove @s Karma 1500

execute as @s[scores={Karma=..1499}] run tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy ","color":"red"},{"text":"500","color":"gold"},{"text":" XP, but didn't have enough Karma!","color":"red"}]
execute as @s[scores={Karma=..1499}] run tellraw @s [{"text":"You don't have enough Karma to do this! You must have at least ","color":"red"},{"text":"1500","color":"gold"},{"text":" Karma!","color":"red"}]

scoreboard players reset @s buy_500xp
scoreboard players enable @a buy_500xp
