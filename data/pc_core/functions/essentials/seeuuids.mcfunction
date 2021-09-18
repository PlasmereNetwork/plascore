# Begin see all online uuids.
# Do it.
execute as @a run tellraw @p[scores={seealluuids=1..}] [{"text":"> "},{"selector":"@s","color":"green"},{"text":"\u00A78'\u00A7as uuid is\u00A78: "},{"score":{"name":"@s","objective":"uuid"},"color":"gold"},{"text":".","color":"dark_gray"}]
tellraw @a[tag=OP] [{"text":"\u00A76See uuids \u00A78: "},{"selector":"@s","color":"green"},{"text":" has just seen all uuids.","color":"red"}]
# Reset.
scoreboard players reset @a seealluuids
scoreboard players enable @a seealluuids
