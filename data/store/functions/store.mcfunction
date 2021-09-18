tellraw @s [{"text":"Welcome to the store!","color":"dark_purple"}]

tellraw @s [{"text":"\u00A7aWant to buy a \u00A72Farming \u00A7aCrate? \u00A76[1 for 2 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77This crate has crops and hoes inside!"},"clickEvent":{"action":"run_command","value":"/trigger crate_farming set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A7cRedstone \u00A7aCrate? \u00A76[1 for 4 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Find redstone materials in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger crate_redstone set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A76Building \u00A7aCrate? \u00A76[1 for 6 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Building blocks are hidden in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger crate_building set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy an \u00A78Ores \u00A7aCrate? \u00A76[1 for 8 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Go mining for gems, but in a crate!"},"clickEvent":{"action":"run_command","value":"/trigger crate_ores set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A74Nether \u00A7aCrate? \u00A76[1 for 9 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77This crates holds the new 1.16 nether items!"},"clickEvent":{"action":"run_command","value":"/trigger crate_nether set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A7bSpecials \u00A7aCrate? \u00A76[1 for 7 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Find unique tools and weapons in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger crate_specials set 1"}}]
tellraw @s [{"text":"\u00A7aWant to buy a \u00A7d1.17 \u00A7aCrate? \u00A76[1 for (1.)17 vote Tokens] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Find 1.17 blocks/items - like Sculk and Copper - in this crate!"},"clickEvent":{"action":"run_command","value":"/trigger Crate_Seventeen set 1"}}]

scoreboard players reset @s store
scoreboard players enable @a store

scoreboard objectives add crate_farming trigger
scoreboard objectives add crate_redstone trigger
scoreboard objectives add crate_building trigger
scoreboard objectives add crate_ores trigger
scoreboard objectives add crate_nether trigger
scoreboard objectives add crate_specials trigger
scoreboard objectives add Crate_Seventeen trigger

scoreboard players enable @a crate_farming
scoreboard players enable @a crate_redstone
scoreboard players enable @a crate_building
scoreboard players enable @a crate_ores
scoreboard players enable @a crate_nether
scoreboard players enable @a crate_specials
scoreboard players enable @a Crate_Seventeen
