### New Sleep Vote System
# Doers
execute as @s[tag=!SleepTagged] store result score PLAYO Database run execute if entity @a
execute as @s[tag=!SleepTagged] run scoreboard players set SVDIV Database 2
execute as @s[tag=!SleepTagged] run scoreboard players operation PLAYO Database /= SVDIV Database
# Tellers
execute as @s[tag=!SleepTagged] run tellraw @a [{"selector":"@s","color":"green"},{"text":" is now sleeping. Please vote for day! \u00A75[\u00A7bA \u00A7bscore \u00A7bof ","color":"gold"},{"score":{"name":"PLAYO","objective":"Database"},"color":"gold"},{"text":" \u00A7bis \u00A7bneeded \u00A7bfor \u00A7bday\u00A75]\u00A76:","color":"gold"}]
execute as @s[tag=!SleepTagged] run tellraw @a [{"text":"[Click for Day]","color":"yellow","hoverEvent":{"action":"show_text","value":"\u00A7eClick for Day!"},"clickEvent":{"action":"run_command","value":"/trigger VoteDay"}},{"text":" [Click for Night]","color":"gray","hoverEvent":{"action":"show_text","value":"\u00A77Click for Night!"},"clickEvent":{"action":"run_command","value":"/trigger VoteNight"}}]
# DOERS.
execute as @s[tag=!SleepTagged] run scoreboard players add VSLEEP Database 1
execute as @s[tag=!SleepTagged] run tag @s add SleepVoted
execute as @s[tag=!SleepTagged] run tag @s add SleepTagged
execute as @s[tag=SleepTagged] run scoreboard players enable @a VoteDay
execute as @s[tag=SleepTagged] run scoreboard players enable @a VoteNight
# Calculating...
execute as @s[tag=SleepTagged] run scoreboard players operation PLAYO Database = Players-Online Stats
execute as @s[tag=SleepTagged] run scoreboard players set SVDIV Database 2
execute as @s[tag=SleepTagged] run scoreboard players operation PLAYO Database /= SVDIV Database
execute as @s[tag=SleepTagged] run scoreboard players add VSTIMER Database 1
# YES
execute if score VSLEEP Database >= PLAYO Database run tellraw @a [{"text":"Players have voted to change to day! Changing to day...","color":"yellow"}]
execute if score VSLEEP Database >= PLAYO Database run weather clear 10000
execute if score VSLEEP Database >= PLAYO Database run time set 2147448005
execute if score VSLEEP Database >= PLAYO Database run tag @a remove SleepVoted
execute if score VSLEEP Database >= PLAYO Database run tag @a remove SleepTagged
execute if score VSLEEP Database >= PLAYO Database run tag @a remove DoSleepVote
execute if score VSLEEP Database >= PLAYO Database run scoreboard players set IsSleepingBool Database 0
execute if score VSLEEP Database >= PLAYO Database run scoreboard players reset * VoteDay
execute if score VSLEEP Database >= PLAYO Database run scoreboard players reset * VoteNight
execute if score VSLEEP Database >= PLAYO Database run scoreboard players reset VSTIMER Database
execute if score VSLEEP Database >= PLAYO Database run scoreboard players set VSLEEP Database 10000
execute if score VSLEEP Database matches 10000 run scoreboard players reset PLAYO Database
execute if score VSLEEP Database matches 10000 run scoreboard players reset VSLEEP Database
# NO
execute if score VSTIMER Database matches 6000 run tellraw @a [{"text":"The majority of players do not want day right now... Keeping night...","color":"gray"}]
execute if score VSTIMER Database matches 6000 run tag @a remove SleepVoted
execute if score VSTIMER Database matches 6000 run tag @a remove SleepTagged
execute if score VSTIMER Database matches 6000 run tag @a remove DoSleepVote
execute if score VSTIMER Database matches 6000 run scoreboard players set IsSleepingBool Database 0
execute if score VSTIMER Database matches 6000 run scoreboard players reset * VoteDay
execute if score VSTIMER Database matches 6000 run scoreboard players reset * VoteNight
execute if score VSTIMER Database matches 6000 run scoreboard players reset PLAYO Database
execute if score VSTIMER Database matches 6000 run scoreboard players reset VSLEEP Database
execute if score VSTIMER Database matches 6000 run scoreboard players reset VSTIMER Database
