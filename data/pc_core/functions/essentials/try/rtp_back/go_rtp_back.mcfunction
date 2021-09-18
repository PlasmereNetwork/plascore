execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["rtp.back"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}

execute as @e[tag=rtp.back,limit=1,sort=nearest] at @s run function pc_core:essentials/try/rtp_back/rtp1

execute at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 0.3 2

tellraw @s [{"text":"You have arrived your last rtp location!","color":"green"}]
tellraw @a[tag=OP] [{"text":"\u00A76RTP Back \u00A78: "},{"selector":"@s","color":"green"},{"text":" was successfully teleported to their last rtp location!","color":"red"}]
