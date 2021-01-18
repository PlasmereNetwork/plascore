### New Home System.
# CATCH
execute as @s[tag=!tplx.home.true2] at @s run tellraw @s [{"text":"Sorry, but you don't have a home stored on our system yet... Use '/trigger SetHome' to set one."}]
execute as @s[tag=!tplx.home.true2] at @s run tellraw @a[tag=OP] [{"text":"\u00A76Home System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to go home, but didn't have one set...","color":"red"}]
# TRY
execute as @s[tag=tplx.home.true2] as @s[tag=!HomeBool] at @s run tellraw @s [{"text":"Sorry, but the cooldown hasn't expired yet... Please wait ","color":"red"},{"score":{"name":"HomeTimer","objective":"Database"},"color":"gold"},{"text":" more seconds...","color":"red"}]
execute as @s[tag=tplx.home.true2] as @s[tag=!HomeBool] at @s run tellraw @s [{"text":"\u00A76Home System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to go Home, but the cooldown hasn't expired yet... They need to wait ","color":"red"},{"score":{"name":"HomeTimer","objective":"Database"},"color":"gold"},{"text":" more seconds...","color":"red"}]
# Home 1
execute as @s[tag=tplx.home.true2] as @s[scores={Home=1}] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home1
# Home 2
execute as @s[tag=tplx.home.true2] as @s[scores={Home=2}] as @s[tag=home.2] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home2
execute as @s[tag=tplx.home.true2] as @s[scores={Home=2}] as @s[tag=!home.2] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a second home..."}]
# Home 3
execute as @s[tag=tplx.home.true2] as @s[scores={Home=3}] as @s[tag=home.3] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home3
execute as @s[tag=tplx.home.true2] as @s[scores={Home=3}] as @s[tag=!home.3] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a third home..."}]
# Home 4
execute as @s[tag=tplx.home.true2] as @s[scores={Home=4}] as @s[tag=home.4] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home4
execute as @s[tag=tplx.home.true2] as @s[scores={Home=4}] as @s[tag=!home.4] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a fourth home..."}]
# Home 5
execute as @s[tag=tplx.home.true2] as @s[scores={Home=5}] as @s[tag=home.5] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home5
execute as @s[tag=tplx.home.true2] as @s[scores={Home=5}] as @s[tag=!home.5] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a fifth home..."}]
# Home 6
execute as @s[tag=tplx.home.true2] as @s[scores={Home=6}] as @s[tag=home.6] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home6
execute as @s[tag=tplx.home.true2] as @s[scores={Home=6}] as @s[tag=!home.6] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a sixth home..."}]
# Home 7
execute as @s[tag=tplx.home.true2] as @s[scores={Home=7}] as @s[tag=home.7] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home7
execute as @s[tag=tplx.home.true2] as @s[scores={Home=7}] as @s[tag=!home.7] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a seventh home..."}]
# Home 8
execute as @s[tag=tplx.home.true2] as @s[scores={Home=8}] as @s[tag=home.8] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home8
execute as @s[tag=tplx.home.true2] as @s[scores={Home=8}] as @s[tag=!home.8] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a eighth home..."}]
# Home 9
execute as @s[tag=tplx.home.true2] as @s[scores={Home=9}] as @s[tag=home.9] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home9
execute as @s[tag=tplx.home.true2] as @s[scores={Home=9}] as @s[tag=!home.9] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a ninth home..."}]
# Home 10
execute as @s[tag=tplx.home.true2] as @s[scores={Home=10}] as @s[tag=home.10] as @s[tag=HomeBool] at @s run function pc_core:essentials/homes/go/go_home10
execute as @s[tag=tplx.home.true2] as @s[scores={Home=10}] as @s[tag=!home.10] as @s[tag=HomeBool] at @s run tellraw @s [{"text":"Sorry, but you don't have a tenth home..."}]
# RESET
scoreboard players reset @s Home
scoreboard players enable @a Home
