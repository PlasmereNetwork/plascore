scoreboard players add @s zeldatime 1
execute as @s[scores={zeldatime=0}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.05946
execute as @s[scores={zeldatime=5}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1
execute as @s[scores={zeldatime=10}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.840496
execute as @s[scores={zeldatime=15}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604
execute as @s[scores={zeldatime=20}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.561231
execute as @s[scores={zeldatime=25}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.890899
execute as @s[scores={zeldatime=30}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.12246
execute as @s[scores={zeldatime=35}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.41421
execute as @s[scores={zeldatime=35..}] run scoreboard players enable @a[tag=special] secret
execute as @s[scores={zeldatime=35..}] run scoreboard players set @s secret 0
execute as @s[scores={zeldatime=35..}] run tellraw @a[tag=OP] [{"text":"secret Zelda Theme System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just played a tune!","color":"red"}]
execute as @s[scores={zeldatime=35..}] at @s run tellraw @a[distance=..20] [{"selector":"@s","color":"green"},{"text":" just played a tune!","color":"green"},{"text":"\n(secret Theme from Legend of Zelda OoT)","color":"gold"}]
execute as @s[scores={zeldatime=35..}] run scoreboard players reset @s zeldatime
