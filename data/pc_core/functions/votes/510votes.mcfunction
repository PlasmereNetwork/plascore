tellraw @a [{"selector":"@s","color":"green"},{"text":" has just voted 510 times, earning them a CUSTOM rank!!","color":"red"}]
playsound minecraft:entity.ender_dragon.death master @a
give @s minecraft:salmon 64

tellraw @a [{"selector":"@s","color":"green"},{"text":", as a result, has also unlocked their sixth SetHome! :D","color":"aqua"}]
tag @s add home6.can
