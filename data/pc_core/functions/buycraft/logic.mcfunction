#
execute as @a[scores={Buycraft=1..}] at @s run function pc_core:buycraft/purchase
execute as @a[scores={Buycraft=..-1}] at @s run function pc_core:buycraft/refunded