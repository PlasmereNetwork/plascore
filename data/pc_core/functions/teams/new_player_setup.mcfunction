# Teleports to Spawn location.
scoreboard players set @s Spawn 1
# Sets their spawnpoint to that location.
execute as @s[tag=!OP,tag=!joined] run function pc_core:spawnpoint
# Sets off their start scores.
scoreboard players set @s RTPs 5
scoreboard players set @s Crate 1
scoreboard players add @a Karma 200
#scoreboard players add @a TC 100
scoreboard players set @s CurrVotes 0
# Enables triggers for all online players | Needed to allow the new player to be able to do triggers.
scoreboard players set @s TriggerReset 1
# Adds players to scoreboard.
scoreboard players add Players-This-Reset Stats 1
scoreboard players add Players-All-Time Stats 1
# Enables particles.
tag @s add PO
tag @s add POed
# Tellraws stuff.
tellraw @a [{"selector":"@s","color":"green"},{"text":" is a new player","color":"red"},{"text":"!","color":"dark_gray"},{"text":"\nWelcome to ","color":"red"},{"text":"Plasmere","color":"red"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"},{"text":"\nWe have now had ","color":"red"},{"score":{"name":"Players-This-Reset","objective":"Stats"},"color":"gold"},{"text":" players join this version of ","color":"red"},{"text":"Vanilla","color":"dark_aqua"},{"text":"! \u00A7b(Vanilla \u00A7bv21)","color":"dark_gray"}]
tellraw @s [{"text":"Please do \u00A7b/trigger Tutorial \u00A7ato get started!","color":"green"}]
tellraw @s [{"text":"Also, \u00A7b/trigger Bugs \u00A7ais pretty useful to!","color":"green"}]
# Gives starter items.
give @s wooden_sword{display:{Name:"{\"text\":\"Foam Dagger\",\"color\":\"gold\"}",Lore:["Should it bend this much?"]},Enchantments:[{id:"sharpness",lvl:3}]} 1
give @s bread{display:{Name:"{\"text\":\"Mana\",\"color\":\"red\"}",Lore:["Tastes stale... :/"]}} 10
give @s white_wool{display:{Name:"{\"text\":\"Cotton Candy\",\"color\":\"green\"}",Lore:["Ew. Tastes like fur!"]}} 3
give @s coal{display:{Name:"{\"text\":\"Chocolate\",\"color\":\"red\"}",Lore:["It's a bit hard..."]}} 8
give @s crafting_table{display:{Name:"{\"text\":\"Bench de la Crafting\",\"color\":\"green\"}",Lore:["Craft things in this."]}} 1
# Sounds.
execute as @a at @s run playsound minecraft:entity.lightning.thunder master @a ~ ~ ~ 1 1 1
