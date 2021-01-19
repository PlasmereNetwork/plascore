### NEW PLAYER SETUP ###
execute as @a[team=,tag=!joined] run function pc_core:teams/new_player_setup
execute as @a[tag=!joined] if entity @s[scores={UUID=0}] run function pc_core:utils/givers/scoreboard/uuid
tag @a[tag=!joined] add joined
execute if entity @a[team=] run scoreboard players add @p TriggerReset 1
execute as @a[team=] at @s run scoreboard players set @s RTPs 5
team join 712 @a[team=]
execute as @a[tag=!NewBooked] run function templex_standard:cmd_book
