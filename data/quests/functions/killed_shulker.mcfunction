# Tellraw.
tellraw @s [{"text":"You just completed a quest!","color":"green"}]
tellraw @s [{"text":"\u00A76700 \u00A74Karma Points \u00A75 have been added to your profile!","color":"dark_purple"}]
tellraw @s [{"text":"\u00A7690 \u00A74Templex Credits \u00A75 have been added to your profile!","color":"dark_purple"}]
tellraw @s [{"text":"\u00A77--- \u00A74Quests \u00A77---"}]
tellraw @s [{"text":"\u00A7bKill Sheep\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bKill Phantom\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bKill Shulker\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bMeat Pie\u00A78: \u00A7cIncomplete!"}]
tellraw @s [{"text":"\u00A72???\u00A78: \u00A7cUnidentified..."}]
# Giving.
scoreboard players add @s Karma 700
scoreboard players add @s TC 90
give @s stone{display:{Name:"{\"text\":\"Get Pronkt\",\"color\":\"aqua\"}"},ench:[{id:16,lvl:10}]} 1
