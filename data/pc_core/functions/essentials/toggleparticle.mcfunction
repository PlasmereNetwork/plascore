execute as @s[tag=!PO] run tag @s add POA
execute as @s[tag=POA] run tellraw @a[tag=OP] [{"text":"Toggle Particle System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s particles \u00A7aON\u00A7c!","color":"red"}]
execute as @s[tag=POA] run tellraw @s [{"text":"Toggled your particles \u00A7aON\u00A7c!","color":"red"}]
execute as @s[tag=POA] run scoreboard players reset @s ToggleParticle
execute as @s[tag=POA] run scoreboard players enable @a[tag=special] ToggleParticle
execute as @s[tag=POA] run scoreboard players enable @a[tag=parttag] ToggleParticle

execute as @s[tag=PO] run tag @s add POR
execute as @s[tag=POR] run tellraw @a[tag=OP] [{"text":"Toggle Particle System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s particles \u00A74OFF\u00A7c!","color":"red"}]
execute as @s[tag=POR] run tellraw @s [{"text":"Toggled your particles \u00A74OFF\u00A7c!","color":"red"}]
execute as @s[tag=POR] run scoreboard players reset @s ToggleParticle
execute as @s[tag=POR] run scoreboard players enable @a[tag=special] ToggleParticle
execute as @s[tag=POR] run scoreboard players enable @a[tag=parttag] ToggleParticle

execute as @s[tag=POR] run tag @s remove PO
execute as @s[tag=POR] run tag @s remove POR
execute as @s[tag=POA] run tag @s add PO
execute as @s[tag=POA] run tag @s remove POA
playsound minecraft:block.note.xylophone master @s
