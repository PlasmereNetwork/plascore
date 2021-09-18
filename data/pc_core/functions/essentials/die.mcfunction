kill @a[scores={die=1..}]
scoreboard players remove @s Deaths 1
scoreboard players reset @s die
scoreboard players enable @a die
tellraw @a[tag=OP] [{"text":"Die System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" used the ","color":"red"},{"text":"Die System","color":"gold"},{"text":"!","color":"red"}]
tellraw @a[tag=OP] [{"text":"Die System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has ","color":"red"},{"score":{"name":"@s","objective":"Deaths"},"color":"gold"},{"text":" Deaths!","color":"red"}]
tellraw @s [{"text":"You have ","color":"light_purple"},{"score":{"name":"@s","objective":"Deaths"},"color":"gold"},{"text":" Deaths!","color":"light_purple"}]
#playsound minecraft:block.note.xylophone master @s
gamemode survival @s[gamemode=adventure]
