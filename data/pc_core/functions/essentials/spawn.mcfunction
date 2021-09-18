execute as @s at @s run function pc_core:essentials/go_spawn
tellraw @s [{"text":"Successfully teleported to spawn!","color":"green"}]
tellraw @a[tag=OP] [{"text":"spawn","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully teleported ","color":"red"},{"selector":"@s","color":"green"},{"text":" to spawn!","color":"red"}]
scoreboard players reset @a spawn
scoreboard players enable @a spawn
playsound minecraft:block.note.xylophone master @s
