# Tellraw.
tellraw @s [{"text":"You just completed a quest!","color":"green"}]
tellraw @s [{"text":"\u00A761000 \u00A74Karma Points \u00A75 have been added to your profile!","color":"dark_purple"}]
tellraw @s [{"text":"\u00A76125 \u00A74Templex Credits \u00A75 have been added to your profile!","color":"dark_purple"}]
tellraw @s [{"text":"\u00A77--- \u00A74Quests \u00A77---"}]
tellraw @s [{"text":"\u00A7bKill Sheep\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bKill Phantom\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bKill Shulker\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bMeat Pie\u00A78: \u00A7aComplete!"}]
tellraw @s [{"text":"\u00A7bResurrection of Flowy\u00A78: \u00A7cIncomplete!"}]
tellraw @s [{"text":"\u00A72???\u00A78: \u00A7cUnidentified..."}]
# Giving.
scoreboard players add @s Karma 1000
scoreboard players add @s TC 125
give @s dragon_breath{display:{Name:"{\"text\":\"Dragon Blood\"}"}} 64
