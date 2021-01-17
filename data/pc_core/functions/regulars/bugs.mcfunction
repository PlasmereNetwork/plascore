# Begin Bug Teller.
tellraw @s [{"text":"\u00A77-- \u00A73Templex \u00A7cBug \u00A75Tracker \u00A77--"}]
tellraw @s [{"text":"\u00A76> \u00A7dChests and shulker boxes sometimes get reset.","color":"light_purple"}]
tellraw @s [{"text":"\u00A76> \u00A7dChunks sometimes take a while to load in.","color":"light_purple"}]
tellraw @s [{"text":"\u00A76> \u00A7dIf you know a bug, please report it!","color":"light_purple"}]

#tellraw @s [{"text":"\u00A76> \u00A7d","color":"light_purple"}]
# Reset.
scoreboard players reset @s Bugs
scoreboard players enable @a Bugs
