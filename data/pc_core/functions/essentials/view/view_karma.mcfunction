# Other.
tellraw @s [{"text":"You have ","color":"red","italic":"true"},{"score":{"name":"@s","objective":"Karma"},"color":"gold","bold":"true"},{"text":" Karma Points","color":"red","italic":"true"},{"text":"!","color":"dark_gray"}]
tellraw @a[tag=OP] [{"text":"View Karma System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just tested for their Karma Points\u00A78. \u00A7cIt read \u00A78\"","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold","bold":"true"},{"text":" Karma Points\u00A78\"!","color":"red"}]
scoreboard players reset @s ViewKarma
scoreboard players enable @a ViewKarma
playsound minecraft:block.note.xylophone master @s
