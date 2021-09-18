give @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1
advancement grant @s only advancements:templex_vote
#execute as @s at @s run scoreboard players add @s voteAdd 200000
scoreboard players add @s diavotes 1
scoreboard players remove @s getvoted 1
scoreboard players add @s Karma 500
scoreboard players add @s stat.votes 1
execute as @s run function pc_core:utils/vote/aftervote

execute as @s[scores={diavotes=5..}] run give @s minecraft:diamond{display:{Name:"{\"text\":\"Blue Shiney Rock\",\"color\":\"aqua\"}"}} 1
execute as @s[scores={diavotes=5..}] run scoreboard players reset @s diavotes

#execute as @s[tag=votedFlop] run function pc_core:vote_crate
#execute as @s[tag=!votedFlop] run tag @s add votedFlop

#scoreboard players add VP Database 1