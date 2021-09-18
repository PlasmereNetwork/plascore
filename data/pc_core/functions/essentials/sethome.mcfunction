# SetHome Splitter.
# SETHOME 1
# Good.
execute as @s[scores={sethome=1}] run function pc_core:essentials/homes/set/set_home1

# SETHOME 2
# Bad.
execute as @s[scores={sethome=2}] as @s[tag=!home2.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 2nd home..."}]
execute as @s[scores={sethome=2}] as @s[tag=!home2.can] run tellraw @a[tag=OP] [{"text":"\u00A76SetHome System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to set their 2nd home, but didn't have the permission to...","color":"red"}]
# Good.
execute as @s[scores={sethome=2}] as @s[tag=home2.can] run function pc_core:essentials/homes/set/set_home2

# SETHOME 3
# Bad.
execute as @s[scores={sethome=3}] as @s[tag=!home3.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 3rd home..."}]
execute as @s[scores={sethome=3}] as @s[tag=!home3.can] run tellraw @a[tag=OP] [{"text":"\u00A76SetHome System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to set their 3rd home, but didn't have the permission to...","color":"red"}]
# Good.
execute as @s[scores={sethome=3}] as @s[tag=home3.can] run function pc_core:essentials/homes/set/set_home3

# SETHOME 4
# Bad.
execute as @s[scores={sethome=4}] as @s[tag=!home4.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 4th home..."}]
execute as @s[scores={sethome=4}] as @s[tag=!home4.can] run tellraw @a[tag=OP] [{"text":"\u00A76SetHome System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to set their 4th home, but didn't have the permission to...","color":"red"}]
# Good.
execute as @s[scores={sethome=4}] as @s[tag=home4.can] run function pc_core:essentials/homes/set/set_home4

# SETHOME 5
# Bad.
execute as @s[scores={sethome=5}] as @s[tag=!home5.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 5th home..."}]
execute as @s[scores={sethome=5}] as @s[tag=!home5.can] run tellraw @a[tag=OP] [{"text":"\u00A76SetHome System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to set their 5th home, but didn't have the permission to...","color":"red"}]
# Good.
execute as @s[scores={sethome=5}] as @s[tag=home5.can] run function pc_core:essentials/homes/set/set_home5

# SETHOME 6
# Bad.
execute as @s[scores={sethome=6}] as @s[tag=!home6.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 6th home..."}]
# Good.
execute as @s[scores={sethome=6}] as @s[tag=home6.can] run function pc_core:essentials/homes/set/set_home6

# SETHOME 7
# Bad.
execute as @s[scores={sethome=7}] as @s[tag=!home7.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 7th home..."}]
# Good.
execute as @s[scores={sethome=7}] as @s[tag=home7.can] run function pc_core:essentials/homes/set/set_home7

# SETHOME 8
# Bad.
execute as @s[scores={sethome=8}] as @s[tag=!home8.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 8th home..."}]
# Good.
execute as @s[scores={sethome=8}] as @s[tag=home8.can] run function pc_core:essentials/homes/set/set_home8

# SETHOME 9
# Bad.
execute as @s[scores={sethome=9}] as @s[tag=!home9.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 9th home..."}]
# Good.
execute as @s[scores={sethome=9}] as @s[tag=home9.can] run function pc_core:essentials/homes/set/set_home9

# SETHOME 10
# Bad.
execute as @s[scores={sethome=10}] as @s[tag=!home10.can] run tellraw @s [{"text":"Sorry, but you don't have permission to set your 10th home..."}]
# Good.
execute as @s[scores={sethome=10}] as @s[tag=home10.can] run function pc_core:essentials/homes/set/set_home10

# Does not exist!
execute as @s[scores={sethome=11..}] run tellraw @s [{"text":"You tried to set a home number that didn't exist..."}]
scoreboard players reset @s sethome
scoreboard players enable @s sethome
