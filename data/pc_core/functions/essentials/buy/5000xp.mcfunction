execute as @s[scores={Karma=15000..}] at @s run summon minecraft:experience_orb ~ ~1 ~ {Value:5000,Invulnerable:1}
execute as @s[scores={Karma=15000..}] run tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully gave ","color":"red"},{"selector":"@s"},{"text":" 5000","color":"gold"},{"text":" XP in exchange for ","color":"red"},{"text":"15000","color":"gold"},{"text":" Karma!","color":"red"}]
execute as @s[scores={Karma=15000..}] run tellraw @s [{"text":"Successfully bought ","color":"green"},{"text":"5000","color":"gold"},{"text":" XP for ","color":"green"},{"text":"15000","color":"gold"},{"text":" Karma!","color":"green"}]
execute as @s[scores={Karma=15000..}] run scoreboard players remove @s Karma 15000

execute as @s[scores={Karma=..14999}] run tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy ","color":"red"},{"text":"5000","color":"gold"},{"text":" XP, but didn't have enough Karma!","color":"red"}]
execute as @s[scores={Karma=..14999}] run tellraw @s [{"text":"You don't have enough Karma to do this! You must have at least ","color":"red"},{"text":"15000","color":"gold"},{"text":" Karma!","color":"red"}]
