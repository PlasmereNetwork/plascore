execute at @s store result entity @s Pos[0] double 1 run scoreboard players get @p[scores={home=9}] xpos9
execute at @s store result entity @s Pos[1] double 1 run scoreboard players get @p[scores={home=9}] ypos9
execute at @s store result entity @s Pos[2] double 1 run scoreboard players get @p[scores={home=9}] zpos9

execute at @s as @p[scores={home=9}] if score @s dim9 matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={home=9}] if score @s dim9 matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={home=9}] if score @s dim9 matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={home=9}] if score @s dim9 matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={home=9}] if score @s dim9 matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={home=9}] if score @s dim9 matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5

execute at @p[scores={home=9}] at @e[distance=..5,type=!player] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run teleport @e[distance=..5,type=!player,type=!item] @p[scores={home=9}]
execute at @p[scores={home=9}] as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run kill @s

kill @s

