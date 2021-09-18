execute at @e[distance=..5,type=!player] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] in the_end run teleport @e[distance=..5,type=!player,type=!item] 100 50 0
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..5] run kill @s
execute in the_end run tp @s 100 50 0
tellraw @a[tag=OP] [{"text":"tpend System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just TPed ","color":"red"},{"selector":"@s","color":"green"},{"text":" to the End!","color":"red"}]
tellraw @s [{"text":"Successfully TPed to the End!","color":"green","italic":"true"}]
scoreboard players set @s tpend 0
scoreboard players enable @a tpend
