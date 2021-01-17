# Tellraw.
tellraw @a [{"text":"VoteParty","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"We have reached \u00A7650\u00A78/\u00A7650 \u00A7bvotes!","color":"aqua"}]
tellraw @a [{"text":"VoteParty","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Party time! Everybody gets 1 extra Vote and heart particles for the next hour.","color":"aqua"}]
# Gift.
scoreboard players add @a CurrVotes 1
give @a minecraft:poisonous_potato{Enchantments:[{}],display:{Lore:['{"text":"For use at /trigger Store.","color":"#9944ff","italic":"false"}'],Name:'{"text":"Vote Token","color":"#99ff00","italic":"false"}'}} 2
execute as @a run function pc_core:vp_payout
execute as @r run function pc_core:vp_diamond
# Setup.
scoreboard players add @a Karma 500
scoreboard players add @a VP 1
scoreboard players reset VPT Database
# Resets.
scoreboard players operation VP Database -= VPM Database
