tellraw @s [{"text":"TP request timed out after ten seconds...","color":"red"}]
execute as @a[scores={TPSend=1..}] run scoreboard players set @s TPSR 0
scoreboard players enable @a TPSend
scoreboard players set @s TPSend 0
execute as @a[scores={TPHere=1..}] run scoreboard players set @s TPHR 0
scoreboard players enable @a TPHere
scoreboard players set @s TPHere 0
