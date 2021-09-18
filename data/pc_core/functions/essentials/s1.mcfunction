execute at @s store result entity @s Pos[0] double 1 run scoreboard players get spawnx Database
execute at @s store result entity @s Pos[1] double 1 run scoreboard players get spawny Database
execute at @s store result entity @s Pos[2] double 1 run scoreboard players get spawnz Database

execute at @s as @p[scores={spawn=1..}] if score spawnd Database matches -1 in minecraft:the_nether run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={spawn=1..}] if score spawnd Database matches 0 in minecraft:overworld run teleport @s ~0.5 ~0.4 ~0.5
execute at @s as @p[scores={spawn=1..}] if score spawnd Database matches 1 in minecraft:the_end run teleport @s ~0.5 ~0.4 ~0.5

kill @s