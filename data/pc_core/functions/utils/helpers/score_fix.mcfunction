# RTPs
tag @a add scoreFix
tag @a[scores={RTPs=0..}] remove scoreFix
scoreboard players set @a[tag=scoreFix] RTPs 5
#tag @a[tag=scoreFix] remove scoreFix
# UUID
tag @a add scoreFix
tag @a[scores={UUID=0..}] remove scoreFix
tag @a[scores={UUID=..0}] remove scoreFix
execute as @a[tag=scoreFix] at @s run function pc_core:utils/givers/scoreboard/uuid
#tag @a[tag=scoreFix] remove scoreFix

scoreboard players set @p[tag=scoreFix] TriggerReset 1