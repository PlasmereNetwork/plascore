# Doers.
scoreboard players reset @s gm.survival
gamemode adventure @s
# Tellraws people.
tellraw @a[tag=OP] [{"text":"Protection System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just set ","color":"red"},{"selector":"@s","color":"green"},{"text":"'s gamemode to Adventure in the to protect builds!","color":"red"}]
tellraw @s [{"text":"Your gamemode has been set to Adventure mode to protect builds in the area you just entered. If you wish to go back to Survival mode (only works in non-protected areas), just type or click: ","color":"red"},{"text":"/trigger triggerreset","color":"aqua","hoverEvent":{"action":"show_text","value":"\u00A73Run this command?"},"clickEvent":{"action":"run_command","value":"/trigger triggerreset"}},{"text":" and then ","color":"red"},{"text":"/trigger gm.survival","color":"aqua","hoverEvent":{"action":"show_text","value":"\u00A73Run this command?"},"clickEvent":{"action":"run_command","value":"/trigger gm.survival"}},{"text":". Sorry for the inconvenience!","color":"red"}]
# Adds a tag so people cannot use /trigger gm.survival while in protected area.
#tag @s add InProtection
