### JORNBINK ###
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:melon"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:bone"}},distance=..1] run function heads:jornbink
### FLOWY ###
#execute as @e[type=item,nbt={Item:{id:"minecraft:dandelion"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lilac"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:orange_tulip"}},distance=..1] run function quests:flowy_triggered
