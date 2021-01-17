# While.
execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..10] ~ ~ ~ 1 1 1
scoreboard objectives add quests.sun dummy
execute store result score time quests.sun run time query daytime
scoreboard players set total quests.sun 24000
scoreboard players set night quests.sun 12000
scoreboard players set flop quests.sun -1
scoreboard players set 0 quests.sun 0
scoreboard players operation time quests.sun -= total quests.sun 
scoreboard players operation time quests.sun *= flop quests.sun
execute if score time quests.sun >= night quests.sun run scoreboard players operation time quests.sun -= night quests.sun
execute if score time quests.sun < night quests.sun run scoreboard players operation time quests.sun += night quests.sun
scoreboard players set 20000 quests.sun 20000
scoreboard players set 10000 quests.sun 10000 
scoreboard players set 9000 quests.sun 9000
scoreboard players set 8000 quests.sun 8000
scoreboard players set 7000 quests.sun 7000
scoreboard players set 6000 quests.sun 6000
scoreboard players set 5000 quests.sun 5000
scoreboard players set 4000 quests.sun 4000
scoreboard players set 3000 quests.sun 3000
scoreboard players set 2000 quests.sun 2000
scoreboard players set 1000 quests.sun 1000 
scoreboard players set 900 quests.sun 900 
scoreboard players set 800 quests.sun 800 
scoreboard players set 700 quests.sun 700 
scoreboard players set 600 quests.sun 600 
scoreboard players set 500 quests.sun 500 
scoreboard players set 400 quests.sun 400 
scoreboard players set 300 quests.sun 300 
scoreboard players set 200 quests.sun 200 
scoreboard players set 100 quests.sun 100
scoreboard players set 90 quests.sun 90
scoreboard players set 80 quests.sun 80
scoreboard players set 70 quests.sun 70
scoreboard players set 60 quests.sun 60
scoreboard players set 50 quests.sun 50
scoreboard players set 40 quests.sun 40
scoreboard players set 30 quests.sun 30
scoreboard players set 20 quests.sun 20
scoreboard players set 10 quests.sun 10 
scoreboard players set 9 quests.sun 9 
scoreboard players set 8 quests.sun 8 
scoreboard players set 7 quests.sun 7
scoreboard players set 6 quests.sun 6
scoreboard players set 5 quests.sun 5 
scoreboard players set 4 quests.sun 4 
scoreboard players set 3 quests.sun 3 
scoreboard players set 2 quests.sun 2
scoreboard players set 1 quests.sun 1
execute if score time quests.sun >= 20000 quests.sun run time add 20000
execute if score time quests.sun >= 10000 quests.sun run time add 10000
execute if score time quests.sun >= 9000 quests.sun run time add 9000
execute if score time quests.sun >= 8000 quests.sun run time add 8000
execute if score time quests.sun >= 7000 quests.sun run time add 7000
execute if score time quests.sun >= 6000 quests.sun run time add 6000
execute if score time quests.sun >= 5000 quests.sun run time add 5000
execute if score time quests.sun >= 4000 quests.sun run time add 4000
execute if score time quests.sun >= 3000 quests.sun run time add 3000
execute if score time quests.sun >= 2000 quests.sun run time add 2000
execute if score time quests.sun >= 1000 quests.sun run time add 1000
execute if score time quests.sun >= 900 quests.sun run time add 900
execute if score time quests.sun >= 800 quests.sun run time add 800
execute if score time quests.sun >= 700 quests.sun run time add 700
execute if score time quests.sun >= 600 quests.sun run time add 600
execute if score time quests.sun >= 500 quests.sun run time add 500
execute if score time quests.sun >= 400 quests.sun run time add 400
execute if score time quests.sun >= 300 quests.sun run time add 300
execute if score time quests.sun >= 200 quests.sun run time add 200
execute if score time quests.sun >= 100 quests.sun run time add 100
execute if score time quests.sun >= 90 quests.sun run time add 90
execute if score time quests.sun >= 80 quests.sun run time add 80
execute if score time quests.sun >= 70 quests.sun run time add 70
execute if score time quests.sun >= 60 quests.sun run time add 60
execute if score time quests.sun >= 50 quests.sun run time add 50
execute if score time quests.sun >= 40 quests.sun run time add 40
execute if score time quests.sun >= 30 quests.sun run time add 30
execute if score time quests.sun >= 20 quests.sun run time add 20
execute if score time quests.sun >= 10 quests.sun run time add 10
execute if score time quests.sun >= 9 quests.sun run time add 9
execute if score time quests.sun >= 8 quests.sun run time add 8
execute if score time quests.sun >= 7 quests.sun run time add 7
execute if score time quests.sun >= 6 quests.sun run time add 6
execute if score time quests.sun >= 5 quests.sun run time add 5
execute if score time quests.sun >= 4 quests.sun run time add 4
execute if score time quests.sun >= 3 quests.sun run time add 3
execute if score time quests.sun >= 2 quests.sun run time add 2
execute if score time quests.sun >= 1 quests.sun run time add 1
scoreboard objectives remove quests.sun
# Forwarding.
execute as @a[distance=..10] run advancement grant @s only quests:moon
# Clean up.
kill @e[type=item,limit=5,sort=nearest,distance=..1]
# Tellers.
tellraw @a [{"selector":"@p","color":"green"},{"text":" just set it to night!","color":"green"}]
