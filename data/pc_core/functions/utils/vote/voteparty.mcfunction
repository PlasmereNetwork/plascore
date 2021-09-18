# Tellraw.
tellraw @a [{"text":"\u00A7bvote party! :D"}]
tellraw @a [{"text":"\u00A7bEveryone now will receive double Karma for the next hour, plus a chance at a diamond, plus a random crate from the store, plus 1 extra vote each, plus 2 vote tokens!","color":"aqua"}]
# Gift.
scoreboard players add @a stat.votes 1
give @a minecraft:poisonous_potato{Enchantments:[{id:"knockback",lvl:1}],display:{Lore:['{"text":"For use at /trigger store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"vote Token","color":"#99ff00","italic":"false"}'}} 2
execute as @a run function pc_core:utils/vote/vp_payout
execute as @r run function pc_core:utils/vote/vp_diamond
# Setup.
scoreboard players add @a Karma 500
scoreboard players add @a VP 1
scoreboard players reset VPT Database
# Resets.
scoreboard players operation VP Database -= VPM Database
