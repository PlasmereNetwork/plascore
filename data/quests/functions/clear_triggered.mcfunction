# While.
execute at @s run playsound minecraft:entity.generic.burn master @a[distance=..10] ~ ~ ~ 1 1 1
weather clear 300
# Forwarding.
execute as @a[distance=..10] run advancement grant @s only quests:clear
# Clean up.
kill @e[type=item,limit=5,sort=nearest,distance=..1]
# Tellers.
tellraw @a [{"selector":"@p","color":"green"},{"text":" just set it to clear!","color":"green"}]
