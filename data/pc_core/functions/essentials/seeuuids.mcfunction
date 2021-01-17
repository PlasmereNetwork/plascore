# Begin see all online uuids.
# Do it.
execute as @a run tellraw @p[scores={SeeAllUUIDs=1..}] [{"text":"> "},{"selector":"@s","color":"green"},{"text":"\u00A78'\u00A7as UUID is\u00A78: "},{"score":{"name":"@s","objective":"UUID"},"color":"gold"},{"text":".","color":"dark_gray"}]
tellraw @a[tag=OP] [{"text":"\u00A76See UUIDs \u00A78: "},{"selector":"@s","color":"green"},{"text":" has just seen all uuids.","color":"red"}]
# Reset.
scoreboard players reset @a SeeAllUUIDs
scoreboard players enable @a SeeAllUUIDs
