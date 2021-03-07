execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["tp.spawn"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}

execute as @e[tag=tp.spawn,limit=1,sort=nearest] at @s run function pc_core:essentials/spawn

execute at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 0.3 2