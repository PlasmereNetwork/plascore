#spawnpoint @s ~ ~ ~
execute at @s run spawnpoint @s ~ ~ ~
tellraw @s [{"text":"Spawnpoint successfully set!","color":"blue","italic":"true"}]
tellraw @a[tag=OP] [{"text":"SpawnPoint System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just successfully set ","color":"red"},{"selector":"@s","color":"green"},{"text":"'s spawnpoint!","color":"red"}]
scoreboard players enable @a SpawnPoint
scoreboard players set @s SpawnPoint 0
execute at @s run playsound minecraft:block.note.xylophone master @s
