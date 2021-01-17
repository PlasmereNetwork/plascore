# Random Number
execute store result score random random run time query daytime
scoreboard players set players random 0
execute as @a run scoreboard players add players random 1
scoreboard players operation random random *= players random

scoreboard players operation temp random = random random
scoreboard players operation temp random %= div random
