# Adder.
scoreboard players set @s TotalTime 0
scoreboard players operation @s TotalTime = @s WalkTime
scoreboard players operation @s TotalTime += @s SprintTime
scoreboard players operation @s TotalTime += @s FlyTime
# Other.
scoreboard players operation VWRAM Database = @s TotalTime
scoreboard players set VWDIV Database 100000
scoreboard players operation VWRAM Database /= VWDIV Database
tellraw @s [{"text":"You have walked around ","color":"red","italic":"true"},{"text":"Templex","color":"dark_aqua","italic":"true","bold":"true"},{"text":" for approximately ","color":"red","italic":"true"},{"score":{"name":"VWRAM","objective":"Database"},"color":"gold","bold":"true"},{"text":" kilometers","color":"red","italic":"true"},{"text":"!","color":"dark_gray"}]
tellraw @a[tag=OP] [{"text":"View WalkTime System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just tested for their WalkTime\u00A78. \u00A7cIt read \u00A78\"","color":"red"},{"score":{"name":"VWRAM","objective":"Database"},"color":"gold","bold":"true"},{"text":" kilometers\u00A78\"!","color":"red"}]
scoreboard players reset @s viewwalktime
scoreboard players enable @a viewwalktime
playsound minecraft:block.note.xylophone master @s
