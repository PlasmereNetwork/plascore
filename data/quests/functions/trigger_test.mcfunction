### MEAT PIE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:porkchop"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:beef"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:chicken"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:mutton"}},distance=..1] run function quests:meatpie_triggered
### FLOWY ###
execute as @e[type=item,nbt={Item:{id:"minecraft:dandelion"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lilac"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:orange_tulip"}},distance=..1] run function quests:flowy_triggered
############################
### SUN ### gunpowder, iron, blaze powder
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..1] run function quests:sun_triggered
### MOON ### gunpowder, iron, obsidian
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},distance=..1] run function quests:moon_triggered
### CLEAR ### gunpowder, iron, glass
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:glass"}},distance=..1] run function quests:clear_triggered
### THUNDER ### gunpowder, iron, iron bars
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_bars"}},distance=..1] run function quests:thunder_triggered
