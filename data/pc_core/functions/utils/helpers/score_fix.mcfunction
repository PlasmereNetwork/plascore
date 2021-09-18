# rtps
tag @a add scoreFix
tag @a[scores={rtps=0..}] remove scoreFix
scoreboard players set @a[tag=scoreFix] rtps 5
#tag @a[tag=scoreFix] remove scoreFix
# uuid
tag @a add scoreFix
tag @a[scores={uuid=0..}] remove scoreFix
tag @a[scores={uuid=..0}] remove scoreFix
execute as @a[tag=scoreFix] at @s run function pc_core:utils/givers/scoreboard/uuid
#tag @a[tag=scoreFix] remove scoreFix

scoreboard players set @p[tag=scoreFix] triggerreset 1