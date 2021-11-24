# Logic.
execute store result score Entities: Details run execute if entity @e
scoreboard players reset P3 Database
# Reschedule.
schedule function pc_core:30seconds 30s
