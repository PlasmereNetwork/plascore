tp @s -44 63 -59 144 0
tellraw @s [{"text":"Welcome to the Mall! Feel free to take a look around!","color":"dark_purple"}]
tellraw @a[tag=OP] [{"text":"Store System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just teleported ","color":"red"},{"selector":"@s","color":"green"},{"text":" to the Mall!","color":"red"}]
scoreboard players reset @s Mall
scoreboard players enable @a Mall
