### NEW PLAYERS ###
function pc_core:utils/new_player_test
function pc_core:utils/vote/votely_check
### REPEATED COMMANDS ###
execute as @a[gamemode=!spectator,tag=PO] run function pc_core:particles
### FUNCTIONS ###
# DONATOR PERKS
execute as @a[scores={secret=1..},tag=special] run function pc_core:specials/zelda
# TPing
execute as @a[scores={spawn=1..}] run function pc_core:essentials/spawn
execute as @a[scores={tpa=1..}] run function pc_core:essentials/tpa/tpa
execute as @a[scores={tpa=..-1}] run function pc_core:essentials/tpa/tpa
# CREEPERS
execute as @e[type=creeper,tag=!creeped] run data merge entity @s {Tags:["creeped"],ExplosionRadius:0b}
# CHEATERS
execute as @a[scores={diamond_mined=1..}] run function pc_core:anticheat/xray_check
execute as @a[scores={Netherite=1..}] run function pc_core:anticheat/xray_check
# SPAWN
execute as @e[type=armor_stand,tag=spawn] at @s as @a[distance=200..700,tag=!spawn.bypass,tag=!op,tag=!OP] at @s run function pc_core:utils/bounce
execute as @e[type=armor_stand,tag=spawn] at @s as @a[distance=..500] at @s run effect give @s resistance 1 100 true
### ITEM CLEAR ###
execute if score IB Database >= 1 Database run function pc_core:item_cleanup
### KILLER ###
kill @a[tag=die]
#kill @e[type=tnt]
kill @e[type=tnt_minecart]
