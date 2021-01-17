scoreboard players add @s ZeldaTime 1
execute as @s[scores={ZeldaTime=0}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.05946
execute as @s[scores={ZeldaTime=5}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1
execute as @s[scores={ZeldaTime=10}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.840496
execute as @s[scores={ZeldaTime=15}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604
execute as @s[scores={ZeldaTime=20}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.561231
execute as @s[scores={ZeldaTime=25}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.890899
execute as @s[scores={ZeldaTime=30}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.12246
execute as @s[scores={ZeldaTime=35}] at @s as @a[distance=..20] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.41421
execute as @s[scores={ZeldaTime=35..}] run scoreboard players enable @a[tag=special] Secret
execute as @s[scores={ZeldaTime=35..}] run scoreboard players set @s Secret 0
execute as @s[scores={ZeldaTime=35..}] run tellraw @a[tag=OP] [{"text":"Secret Zelda Theme System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just played a tune!","color":"red"}]
execute as @s[scores={ZeldaTime=35..}] at @s run tellraw @a[distance=..20] [{"selector":"@s","color":"green"},{"text":" just played a tune!","color":"green"},{"text":"\n(Secret Theme from Legend of Zelda OoT)","color":"gold"}]
execute as @s[scores={ZeldaTime=35..}] run scoreboard players reset @s ZeldaTime
