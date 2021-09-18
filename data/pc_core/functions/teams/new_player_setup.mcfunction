# Teleports to spawn location.
scoreboard players set @s spawn 1
# Sets their spawnpoint to that location.
execute as @s[tag=!OP,tag=!joined] run function pc_core:spawnpoint
# Sets off their start scores.
scoreboard players set @s rtps 5
scoreboard players set @s Crate 1
scoreboard players add @a Karma 200
#scoreboard players add @a TC 100
scoreboard players set @s stat.votes 0
# Enables triggers for all online players | Needed to allow the new player to be able to do triggers.
scoreboard players set @s triggerreset 1
# Adds players to scoreboard.
scoreboard players add Players-This-Reset Stats 1
scoreboard players add Players-All-Time Stats 1
# uuid
function pc_core:utils/givers/scoreboard/uuid
# Enables particles.
tag @s add PO
tag @s add POed
# Tellraws stuff.
tellraw @a [{"selector":"@s","color":"green"},{"text":" is a new player","color":"red"},{"text":"!","color":"dark_gray"},{"text":"\nWelcome to ","color":"red"},{"text":"Plasmere","color":"red"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"},{"text":"\nWe have now had ","color":"red"},{"score":{"name":"Players-This-Reset","objective":"Stats"},"color":"gold"},{"text":" players join this version of ","color":"red"},{"text":"Vanilla","color":"dark_aqua"},{"text":"! \u00A7b(Vanilla \u00A7bv21)","color":"dark_gray"}]
tellraw @s [{"text":"Please do \u00A7b/trigger tutorial \u00A7ato get started!","color":"green"}]
# Gives starter items.
give @s wooden_sword{display:{Name:"{\"text\":\"Foam Dagger\",\"color\":\"gold\"}",Lore:["Should it bend this much?"]},Enchantments:[{id:"sharpness",lvl:3}]} 1
give @s bread{display:{Name:"{\"text\":\"Mana\",\"color\":\"red\"}",Lore:["Tastes stale... :/"]}} 10
give @s white_wool{display:{Name:"{\"text\":\"Cotton Candy\",\"color\":\"green\"}",Lore:["Ew. Tastes like fur!"]}} 3
give @s coal{display:{Name:"{\"text\":\"Chocolate\",\"color\":\"red\"}",Lore:["It's a bit hard..."]}} 8
give @s crafting_table{display:{Name:"{\"text\":\"Bench de la Crafting\",\"color\":\"green\"}",Lore:["Craft things in this."]}} 1
give @s written_book{pages:['{"text":"Table of Contents:\\n\\n2-5 English"}','["",{"text":"Want to teleport to the wild?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger rtp","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"Need more rtp\'s?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger buy_rtp","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"Want to go to the end?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger tpend","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"How To Tpa to Players?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger tpa add [uuid]","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"How to see player uuid?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger seeAlluuids","color":"dark_aqua"}]','["",{"text":"How to vote for server?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger vote","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"What can I do with vote tokens?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger store","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"How to set a home?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger sethome add [number]","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"How to get back home?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger home add [number]","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"Server Discord?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger discord","color":"dark_aqua"}]','["",{"text":"What are the Server Rules?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger rules","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"Want to Donate to Server?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger donate","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"How to get Karma Points?","color":"red"},{"text":"\\n","color":"reset"},{"text":"Play on the server","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"How can I view my Karma Points?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/trigger viewkarma","color":"dark_aqua"}]','["",{"text":"How to claim land?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/claim select ","color":"dark_aqua"},{"text":"and then right click one corner, and left click the opposite corner. After that, look in chat and click the message that pops up.","color":"dark_purple"},{"text":"\\n","color":"reset"},{"text":"How to give permission to friends on my claim?","color":"red"},{"text":"\\n","color":"reset"},{"text":"/claim permission [claim name] set [username] [permission] true","color":"dark_aqua"},{"text":"\\n ","color":"reset",distance=..2}]'],title:"Guide book",author:SarahAquamarine}
# Sounds.
execute as @a at @s run playsound minecraft:entity.lightning.thunder master @a ~ ~ ~ 1 1 1
# LAST
team join default @s
tag @s add firstTagged
tag @s[tag=!joined] add joined