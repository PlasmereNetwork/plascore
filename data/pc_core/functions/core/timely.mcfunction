## Timely
execute as @p[scores={DiaVotes=5..}] at @s run give @s minecraft:diamond{display:{LocName:"Blue Shiney Rock",Lore:["Shine bright like a diamond!","Vote reward."]}} 1
execute as @p[scores={DiaVotes=5..}] at @s run scoreboard players remove @s DiaVotes 5
execute as @a[scores={CurrVotes=0..},tag=!VoteTagged] at @s run tag @s add VoteTagged
execute as @a[tag=!VoteTagged] at @s run scoreboard players set @s CurrVotes 0
## Functions
function pc_core:core/functions
function pc_core:utils/givers/other/crates
function pc_core:core/nloop
function quests:trigger_test
### Has to be last.
schedule function pc_core:core/timely 1s
