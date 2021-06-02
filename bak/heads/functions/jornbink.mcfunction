# While.
execute at @s run playsound minecraft:entity.player.burp master @a[distance=..10] ~ ~ ~ 1 1 1
# Clean up.
tp @e[type=item,limit=3,sort=nearest,distance=..1] ~ ~-270 ~
# Giving.
summon item ~ ~ ~ {Item:{id:"player_head",Count:1b,tag:{SkullOwner:"jornbink"}}}
