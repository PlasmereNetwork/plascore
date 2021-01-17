tellraw @s [{"text":"Welcome to the Store!","color":"dark_purple"}]

tellraw @s [{"text":"\u00A7aWant to buy a \u00A72Farming \u00A7aCrate? \u00A76[1 for 2 Vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77This crate has crops and hoes inside!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Farming set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A7cRedstone \u00A7aCrate? \u00A76[1 for 4 Vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Find redstone materials in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Redstone set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A76Building \u00A7aCrate? \u00A76[1 for 6 Vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Building blocks are hidden in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Building set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy an \u00A78Ores \u00A7aCrate? \u00A76[1 for 8 Vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Go mining for gems, but in a crate!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Ores set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A74Nether \u00A7aCrate? \u00A76[1 for 9 Vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77This crates holds the new 1.16 nether items!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Nether set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A7bSpecials \u00A7aCrate? \u00A76[1 for 7 Vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Find unique tools and weapons in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Specials set 1"}}]

scoreboard players reset @s Store
scoreboard players enable @a Store

scoreboard objectives add Crate_Farming trigger
scoreboard objectives add Crate_Redstone trigger
scoreboard objectives add Crate_Building trigger
scoreboard objectives add Crate_Ores trigger
scoreboard objectives add Crate_Nether trigger
scoreboard objectives add Crate_Specials trigger

scoreboard players enable @a Crate_Farming
scoreboard players enable @a Crate_Redstone
scoreboard players enable @a Crate_Building
scoreboard players enable @a Crate_Ores
scoreboard players enable @a Crate_Nether
scoreboard players enable @a Crate_Specials
