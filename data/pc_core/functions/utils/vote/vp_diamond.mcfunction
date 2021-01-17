# vp_diamond
scoreboard players set div random 4
function pc_core:random

execute if score temp random matches 0 run give @s minecraft:diamond{display:{Name:"{\"text\":\"Special Diamond!\",\"color\":\"##0073e6\"}"}}
