### REPEATED COMMANDS ###
execute as @a[scores={VP=1..}] run function pc_core:vppart
execute as @a[scores={GetVoted=1..}] at @s run function pc_core:getvoted
execute as @a[tag=!POed] at @s run tag @s add PO
execute as @a[tag=!POed] at @s run tag @s add POed
### VOTE PARTY ###
execute if score VP Database >= VPM Database run function pc_core:voteparty
execute as @a[scores={VP=1..}] at @s run title @s actionbar [{"text":"VoteParty still loves you!","color":"aqua"}]
execute if score VPT Database >= 2 Database run scoreboard players reset * VP
### UUID ###
execute as @p[tag=!ThisUUID] run function pc_core:uuid
execute as @p[scores={UUID=0}] run function pc_core:uuid
### SPAWN PROT ### distance=..200,x=0,y=60,z=0
teleport @e[type=phantom,distance=..200,x=0,y=60,z=0] ~ ~-300 ~
teleport @e[type=skeleton,distance=..200,x=0,y=60,z=0] ~ ~-300 ~
### NLOOP ###
#function pc_core:legacy_functions
#schedule function pc_core:nloop 1s
