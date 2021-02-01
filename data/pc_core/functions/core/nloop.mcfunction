### REPEATED COMMANDS ###
execute as @a[scores={VP=1..}] run function pc_core:vppart
execute as @a[scores={GetVoted=1..}] at @s run function pc_core:utils/vote/getvoted
execute as @a[tag=!POed] at @s run tag @s add PO
execute as @a[tag=!POed] at @s run tag @s add POed
### VOTE PARTY ###
function pc_core:core/voteparty
### UUID ###
execute as @p[tag=!ThisUUID] run function pc_core:utils/scoreboard/givers/uuid
execute as @p[scores={UUID=0}] run function pc_core:utils/scoreboard/givers/uuid
### SPAWN PROT ### distance=..200,x=0,y=60,z=0
teleport @e[type=phantom,distance=..200,x=0,y=60,z=0] ~ ~-300 ~
teleport @e[type=skeleton,distance=..200,x=0,y=60,z=0] ~ ~-300 ~
### NLOOP ###
#function pc_core:core/functions
#schedule function pc_core:core/nloop 1s
