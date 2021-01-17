execute at @s store result entity @s Pos[0] double 1 run scoreboard players get @p[scores={Home=6}] xPos6
execute at @s store result entity @s Pos[1] double 1 run scoreboard players get @p[scores={Home=6}] yPos6
execute at @s store result entity @s Pos[2] double 1 run scoreboard players get @p[scores={Home=6}] zPos6

execute at @s as @p[scores={Home=6}] if score @s dim6 matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=6}] if score @s dim6 matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=6}] if score @s dim6 matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=6}] if score @s dim6 matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=6}] if score @s dim6 matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={Home=6}] if score @s dim6 matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5

execute at @p[scores={Home=6}] at @e[distance=..5,type=!player] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run teleport @e[distance=..5,type=!player,type=!item] @p[scores={Home=6}]
execute at @p[scores={Home=6}] as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run kill @s

kill @s

