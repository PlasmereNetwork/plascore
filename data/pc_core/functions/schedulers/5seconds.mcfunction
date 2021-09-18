execute if score 5s Database matches 1 run scoreboard objectives setdisplay list uuid
execute if score 5s Database matches 1 run scoreboard players add 5s Database 1

execute if score 5s Database matches 0 run scoreboard objectives setdisplay list stat.votes
execute if score 5s Database matches 0 run scoreboard players add 5s Database 1

execute if score 5s Database matches 2 run scoreboard players set 5s Database 0

schedule function pc_core:5seconds 5s
