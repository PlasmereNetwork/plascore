execute as @s[scores={RTPs=..0}] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to RTP, but did not have enough RTPs...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nThier RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[scores={RTPs=..0}] run tellraw @s [{"text":"You do not have enough RTPs for this as you have \u00A760 \u00A7cRTPs left...\n","color":"red"},{"text":"You can buy more by typing \"/trigger BuyRTP set 1\"!","color":"gray"},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]

execute as @s[scores={RTPs=1..}] run tag @s add GettingRTP
execute as @s[tag=GettingRTP] run tellraw @a [{"text":"Generating new chunks! Expect a little lag...","color":"red"}]
execute as @s[tag=GettingRTP] if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run spreadplayers 0 0 0 500000 false @s
execute as @s[tag=GettingRTP] if entity @s[nbt={Dimension:"minecraft:the_nether"}] at @s run spreadplayers ~ ~ 0 5000 under 125 false @s
execute as @s[tag=GettingRTP] if entity @s[nbt={Dimension:"minecraft:the_end"}] at @s run spreadplayers ~ ~ 0 50000 false @s
execute as @s[tag=GettingRTP] run scoreboard players remove @s RTPs 1
execute as @s[tag=GettingRTP,tag=!OP] run scoreboard players set @s Survival 1
execute as @s[tag=GettingRTP] store result score @s rtp.xpos run data get entity @s Pos[0]
execute as @s[tag=GettingRTP] store result score @s rtp.ypos run data get entity @s Pos[1]
execute as @s[tag=GettingRTP] store result score @s rtp.zpos run data get entity @s Pos[2]
execute as @s[tag=GettingRTP] run tellraw @s [{"text":"Successfully set your RTP Coords to X: ","color":"green"},{"score":{"name":"@s","objective":"rtp.xpos"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"rtp.ypos"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"rtp.zpos"},"color":"gold"},{"text":"!","color":"green"}]
execute as @s[tag=GettingRTP] run tellraw @s [{"text":"RTPed successfully!","color":"green","italic":"true"},{"text":"\n\u00A77Current \u00A74RTPs\u00A78: "},{"score":{"name":"@s","objective":"RTPs"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]
execute as @s[tag=GettingRTP] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just successfully RTPed ","color":"red"},{"selector":"@s","color":"green"},{"text":"!","color":"red"}]
execute as @s[tag=GettingRTP] run tag @s remove GettingRTP

scoreboard players set @s RTP 0
scoreboard players enable @a RTP
