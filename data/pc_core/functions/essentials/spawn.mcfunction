execute as @s at @s run function pc_core:essentials/go_spawn
tellraw @s [{"text":"Successfully teleported to Spawn!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Spawn","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully teleported ","color":"red"},{"selector":"@s","color":"green"},{"text":" to Spawn!","color":"red"}]
scoreboard players reset @a Spawn
scoreboard players enable @a Spawn
playsound minecraft:block.note.xylophone master @s
