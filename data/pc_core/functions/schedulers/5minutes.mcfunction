function pc_core:karma
scoreboard players set @a TotalTime 0
execute as @a run scoreboard players operation @s TotalTime = @s WalkTime
execute as @a run scoreboard players operation @s TotalTime += @s SprintTime
execute as @a run scoreboard players operation @s TotalTime += @s FlyTime
execute as @a run scoreboard players operation @s TotalTime += @s voteAdd

claim blocks add @a 41

#function villagers:fix

schedule function pc_core:schedulers/5minutes 300s
