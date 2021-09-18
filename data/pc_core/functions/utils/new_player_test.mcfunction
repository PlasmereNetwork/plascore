### NEW PLAYER SETUP ###
execute as @a[tag=!joined] run function pc_core:teams/new_player_setup
execute as @a[tag=!joined] if entity @s[tag=!uuided] run function pc_core:utils/givers/scoreboard/uuid
execute as @a[team=] at @s run scoreboard players set @s rtps 5
team join default @a[team=]
execute as @a[tag=!NewBooked] run function templex_standard:cmd_book
