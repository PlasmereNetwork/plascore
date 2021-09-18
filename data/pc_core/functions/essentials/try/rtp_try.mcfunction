execute as @s[scores={rtps=..0}] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to rtp, but did not have enough rtps...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nThier rtps: ","color":"gray"},{"score":{"name":"@s","objective":"rtps"},"color":"gold"}]
execute as @s[scores={rtps=..0}] run tellraw @s [{"text":"You do not have enough rtps for this as you have \u00A760 \u00A7crtps left...\n","color":"red"},{"text":"You can buy more by typing \"/trigger buy_rtp set 1\"!","color":"gray"},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]

execute as @s[scores={rtps=1..}] run tag @s add gettingrtp
execute as @s[tag=gettingrtp] run tellraw @a [{"text":"Generating new chunks! Expect a little lag...","color":"red"}]
execute as @s[tag=gettingrtp] if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run spreadplayers 0 0 0 500000 false @s
execute as @s[tag=gettingrtp] if entity @s[nbt={Dimension:"minecraft:the_nether"}] at @s run spreadplayers ~ ~ 0 5000 under 125 false @s
execute as @s[tag=gettingrtp] if entity @s[nbt={Dimension:"minecraft:the_end"}] at @s run spreadplayers ~ ~ 0 50000 false @s
execute as @s[tag=gettingrtp] run scoreboard players remove @s rtps 1
execute as @s[tag=gettingrtp,tag=!OP] run scoreboard players set @s gm.survival 1
execute as @s[tag=gettingrtp] store result score @s rtp.xpos run data get entity @s Pos[0]
execute as @s[tag=gettingrtp] store result score @s rtp.ypos run data get entity @s Pos[1]
execute as @s[tag=gettingrtp] store result score @s rtp.zpos run data get entity @s Pos[2]
execute as @s[tag=gettingrtp] run tellraw @s [{"text":"Successfully set your rtp coords to X: ","color":"green"},{"score":{"name":"@s","objective":"rtp.xpos"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"rtp.ypos"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"rtp.zpos"},"color":"gold"},{"text":"!","color":"green"}]
execute as @s[tag=gettingrtp] run tellraw @s [{"text":"Rtped successfully!","color":"green","italic":"true"},{"text":"\n\u00A77Current \u00A74rtps\u00A78: "},{"score":{"name":"@s","objective":"rtps"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]
execute as @s[tag=gettingrtp] run tellraw @a[tag=OP] [{"text":"rtp System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just successfully rtped ","color":"red"},{"selector":"@s","color":"green"},{"text":"!","color":"red"}]
execute as @s[tag=gettingrtp] run tag @s remove gettingrtp

scoreboard players set @s rtp 0
scoreboard players enable @a rtp
