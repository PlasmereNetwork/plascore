### diamond_mined ###
scoreboard players add @s diamond_mined_time 1
execute as @a[scores={diamond_mined_time=1200..}] run tellraw @a[tag=OP] [{"text":"Xray Check System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has been mining diamonds for a minute, but has only mined ","color":"red"},{"score":{"name":"@s","objective":"diamond_mined"},"color":"gold"},{"text":" Diamonds. They need to mine ","color":"red"},{"text":"13","color":"gold"},{"text":" Diamonds in order to be considered an \"Xray Hacker\". You may still want to watch them.","color":"red"}]

execute as @a[scores={diamond_mined_time=1200..}] run scoreboard players reset @s diamond_mined
execute as @a[scores={diamond_mined_time=1200..}] run scoreboard players reset @s diamond_mined_time

execute as @a[scores={diamond_mined=13..}] run scoreboard players set Z diamond_mined 20
execute as @a[scores={diamond_mined=13..}] run scoreboard players operation Z diamond_mined_time = @s diamond_mined_time
execute as @a[scores={diamond_mined=13..}] run scoreboard players operation Z diamond_mined_time /= Z diamond_mined
execute as @a[scores={diamond_mined=13..}] run tellraw @a[tag=OP] [{"text":"Xray Check System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has just mined ","color":"red"},{"score":{"name":"@s","objective":"diamond_mined"},"color":"gold"},{"text":" diamond_mineds in ","color":"red"},{"score":{"name":"Z","objective":"diamond_mined_time"},"color":"gold"},{"text":" seconds and thus is now placed on the \"Xray Hackers\" list. Go and check if I am correct. ;) Sometimes I'm wrong.\n","color":"red"},{"selector":"@a[scores={Xray=1..}]"},{"text":" have already been placed on this list. (Only shows those who are online.)","color":"red"}]
execute as @a[scores={diamond_mined=13..}] run scoreboard players add @s Xray 1

execute as @a[scores={diamond_mined=13..}] run scoreboard players reset @s diamond_mined_time
execute as @a[scores={diamond_mined=13..}] run scoreboard players reset @s diamond_mined

### Netherite ###
scoreboard players add @s NetheriteTime 1
execute as @a[scores={NetheriteTime=1200..}] run tellraw @a[tag=OP] [{"text":"Xray Check System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has been mining Ancient Debris for a minute, but has only mined ","color":"red"},{"score":{"name":"@s","objective":"Netherite"},"color":"gold"},{"text":" Ancient Debris. They need to mine ","color":"red"},{"text":"20","color":"gold"},{"text":" Ancient Debris in order to be considered an \"Xray Hacker\". You may still want to watch them.","color":"red"}]

execute as @a[scores={NetheriteTime=1200..}] run scoreboard players reset @s Netherite
execute as @a[scores={NetheriteTime=1200..}] run scoreboard players reset @s NetheriteTime

execute as @a[scores={Netherite=13..}] run scoreboard players set Z Netherite 20
execute as @a[scores={Netherite=13..}] run scoreboard players operation Z NetheriteTime = @s NetheriteTime
execute as @a[scores={Netherite=13..}] run scoreboard players operation Z NetheriteTime /= Z Netherite
execute as @a[scores={Netherite=13..}] run tellraw @a[tag=OP] [{"text":"Xray Check System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has just mined ","color":"red"},{"score":{"name":"@s","objective":"Netherite"},"color":"gold"},{"text":" Ancient Debris in ","color":"red"},{"score":{"name":"Z","objective":"diamond_mined_time"},"color":"gold"},{"text":" seconds and thus is now placed on the \"Xray Hackers\" list. Go and check if I am correct. ;) Sometimes I'm wrong.\n","color":"red"},{"selector":"@a[scores={Xray=1..}]"},{"text":" have already been placed on this list. (Only shows those who are online.)","color":"red"}]
execute as @a[scores={Netherite=13..}] run scoreboard players add @s Xray 1

execute as @a[scores={Netherite=13..}] run scoreboard players reset @s NetheriteTime
execute as @a[scores={Netherite=13..}] run scoreboard players reset @s Netherite
