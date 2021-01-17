execute as @s[scores={Karma=150..}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:50,Invulnerable:1}
execute as @s[scores={Karma=150..}] run tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully gave ","color":"red"},{"selector":"@s"},{"text":" 50","color":"gold"},{"text":" XP in exchange for ","color":"red"},{"text":"150","color":"gold"},{"text":" Karma!","color":"red"}]
execute as @s[scores={Karma=150..}] run tellraw @s [{"text":"Successfully bought ","color":"green"},{"text":"50","color":"gold"},{"text":" XP for ","color":"green"},{"text":"150","color":"gold"},{"text":" Karma!","color":"green"}]
execute as @s[scores={Karma=150..}] run scoreboard players remove @s Karma 150

execute as @s[scores={Karma=..149}] run tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy ","color":"red"},{"text":"50","color":"gold"},{"text":" XP, but didn't have enough Karma!","color":"red"}]
execute as @s[scores={Karma=..149}] run tellraw @s [{"text":"You don't have enough Karma to do this! You must have at least ","color":"red"},{"text":"150","color":"gold"},{"text":" Karma!","color":"red"}]

scoreboard players reset @s Buy_50XP
scoreboard players enable @a Buy_50XP
