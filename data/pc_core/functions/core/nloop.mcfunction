### REPEATED COMMANDS ###
execute as @a[scores={getvoted=1..}] at @s run function pc_core:utils/vote/getvoted
execute as @a[scores={getvoted=..-1}] at @s run scoreboard players set @s getvoted 0
execute as @a[tag=!POed] at @s run tag @s add PO
execute as @a[tag=!POed] at @s run tag @s add POed
### VOTE PARTY ###
function pc_core:core/voteparty
bossbar set minecraft:plasmere name [{"text":"\u00A72vote Party \u00A78- "},{"score":{"name":"VP","objective":"Database"},"color":"gold"},{"text":"\u00A78/"},{"score":{"name":"VPM","objective":"Database"},"color":"gold"}]
execute store result bossbar minecraft:plasmere value run scoreboard players get VP Database
bossbar set minecraft:plasmere players @a
### uuid ###
execute as @p[tag=!Thisuuid] run function pc_core:utils/scoreboard/givers/uuid
execute as @p[scores={uuid=0}] run function pc_core:utils/scoreboard/givers/uuid
### SPAWN PROT ### distance=..200,x=0,y=60,z=0
teleport @e[type=phantom,distance=..200,x=0,y=60,z=0] ~ ~-300 ~
teleport @e[type=skeleton,distance=..200,x=0,y=60,z=0] ~ ~-300 ~
### NLOOP ###
#function pc_core:core/functions
#schedule function pc_core:core/nloop 1s
