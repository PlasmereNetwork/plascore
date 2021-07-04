tag @s add spawnChecking
execute at @s[tag=spawnChecking] unless entity @e[type=armor_stand,distance=..300,tag=spawn] run tag @s remove spawnChecking

execute as @s[tag=!spawnChecking,scores={Karma=700..}] at @s run summon shulker ~ ~ ~ {CustomName:"{\"text\":\"Store Bought\",\"color\":\"green\"}"}
execute as @s[tag=!spawnChecking,scores={Karma=700..}] run tellraw @a[tag=OP] [{"text":"Shulker System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just bought a Shulker for 700 Karma!","color":"red"}]
execute as @s[tag=!spawnChecking,scores={Karma=700..}] run tellraw @s [{"text":"Successfully bought a Shulker.","color":"green","italic":"true"}]
execute as @s[tag=!spawnChecking,scores={Karma=700..}] run scoreboard players remove @s Karma 700

execute as @s[tag=!spawnChecking,scores={Karma=..699}] run tellraw @a[tag=OP] [{"text":"Shulker System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy a Shulker, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[tag=!spawnChecking,scores={Karma=..699}] run tellraw @s [{"text":"You don't have enough Karma to buy this!","color":"red"},{"text":"\nIf you want to know your Karma, hit the TAB button on your keyboard and look at the number next to your name.","color":"gray"}]

execute as @s[tag=spawnChecking] run tellraw @s [{"text":"\u00A7cSorry, but you cannot do this at spawn!"}]
execute as @s[tag=spawnChecking] run tellraw @a[tag=OP] [{"text":"Shulker System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy a Shulker, but they were at spawn!"}]

scoreboard players reset @s Shulker
scoreboard players enable @a Shulker
