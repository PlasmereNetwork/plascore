## Timely
execute as @p[scores={DiaVotes=5..}] at @s run give @s minecraft:diamond{display:{LocName:"Blue Shiney Rock",Lore:["Shine bright like a diamond!","Vote reward."]}} 1
execute as @p[scores={DiaVotes=5..}] at @s run scoreboard players remove @s DiaVotes 5
execute as @a[scores={CurrVotes=0..},tag=!VoteTagged] at @s run tag @s add VoteTagged
execute as @a[tag=!VoteTagged] at @s run scoreboard players set @s CurrVotes 0
## Functions
function pc_core:legacy_functions
function pc_core:votely_check
function pc_core:crates
function pc_core:nloop
#function mobcap:loop
function sq:main
function quests:trigger_test
## Timers
#scoreboard players add Seconds Database 1
#execute if score Seconds Database matches 60 run function pc_core:mob_rate
#execute if score Seconds Database matches 60 run scoreboard players add Minutes Database 1
#execute if score Seconds Database matches 60 run scoreboard players set Seconds Database 0
#execute if score Minutes Database matches 60 if score Seconds Database matches 0 run scoreboard players add Hours Database 1
#execute if score Minutes Database matches 60 if score Seconds Database matches 0 run scoreboard players set Minutes Database 0
### Has to be last.
schedule function pc_core:timely 1s
