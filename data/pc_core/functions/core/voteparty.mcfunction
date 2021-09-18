execute if score VP Database >= VPM Database run function pc_core:utils/vote/voteparty
execute as @a[scores={VP=1..}] at @s run title @s actionbar [{"text":"voteParty still loves you!","color":"aqua"}]
execute if score VPT Database >= 2 Database run scoreboard players reset * VP