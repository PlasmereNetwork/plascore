execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["HomeTP"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}

execute as @e[tag=HomeTP,limit=1,sort=nearest] at @s run function pc_core:essentials/homes/go/h7

execute at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 0.3 2

tellraw @s [{"text":"You have arrived at your \u00A767th \u00A7ahome!","color":"green"}]
tellraw @a[tag=OP] [{"text":"\u00A76Home System \u00A78: "},{"selector":"@s","color":"green"},{"text":" was successfully teleported to their \u00A767th \u00A7chome!","color":"red"}]
