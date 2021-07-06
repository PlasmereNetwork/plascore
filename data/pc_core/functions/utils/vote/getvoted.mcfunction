give @s minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger Store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"Vote Token","color":"#99ff00","italic":"false"}'}}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1
advancement grant @s only advancements:templex_vote
#execute as @s at @s run scoreboard players add @s VoteAdd 200000
scoreboard players add @s DiaVotes 1
scoreboard players remove @s GetVoted 1
scoreboard players add @s Karma 500
scoreboard players add @s CurrVotes 1
execute as @s run function pc_core:utils/vote/aftervote

execute as @s[scores={DiaVotes=5..}] run give @s minecraft:diamond{display:{Name:"{\"text\":\"Blue Shiney Rock\",\"color\":\"aqua\"}"}} 1
execute as @s[scores={DiaVotes=5..}] run scoreboard players reset @s DiaVotes

#execute as @s[tag=VotedFlop] run function pc_core:vote_crate
#execute as @s[tag=!VotedFlop] run tag @s add VotedFlop

#scoreboard players add VP Database 1