## Timely
execute as @p[scores={diavotes=5..}] at @s run give @s minecraft:diamond{display:{LocName:"Blue Shiney Rock",Lore:["Shine bright like a diamond!","vote reward."]}} 1
execute as @p[scores={diavotes=5..}] at @s run scoreboard players remove @s diavotes 5
execute as @a[scores={stat.votes=0..},tag=!voteTagged] at @s run tag @s add voteTagged
execute as @a[tag=!voteTagged] at @s run scoreboard players set @s stat.votes 0
## Functions
function pc_core:buycraft/logic
function pc_core:core/functions
function pc_core:utils/givers/other/crates
function pc_core:core/nloop
function quests:trigger_test
function pc_core:utils/helpers/score_fix
### Has to be last.
schedule function pc_core:core/timely 1s
