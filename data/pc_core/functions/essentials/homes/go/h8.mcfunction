execute at @s store result entity @s Pos[0] double 1 run scoreboard players get @p[scores={Home=8}] xPos8
execute at @s store result entity @s Pos[1] double 1 run scoreboard players get @p[scores={Home=8}] yPos8
execute at @s store result entity @s Pos[2] double 1 run scoreboard players get @p[scores={Home=8}] zPos8

execute at @s as @p[scores={Home=8}] if score @s dim8 matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=8}] if score @s dim8 matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=8}] if score @s dim8 matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=8}] if score @s dim8 matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=8}] if score @s dim8 matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=8}] if score @s dim8 matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5

execute at @p[scores={Home=8}] at @e[distance=..5,type=!player] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run teleport @e[distance=..5,type=!player,type=!item] @p[scores={Home=8}]
execute at @p[scores={Home=8}] as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run kill @s

kill @s

