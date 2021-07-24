### TEAMS ###
execute as @a[team=!default,scores={CurrVotes=..2,TotalTime=1..},tag=!special] run function pc_core:teams/ncfix
# 3 Votes
execute as @a[team=!711,scores={CurrVotes=3..9},tag=!special] run function pc_core:teams/team_villager
# 10 Votes
execute as @a[team=!710,scores={CurrVotes=10..19},tag=!special] run function pc_core:teams/team_warrior
# 20 Votes
execute as @a[team=!709,scores={CurrVotes=20..39},tag=!special] run function pc_core:teams/team_expeditioner
# 40 Votes
execute as @a[team=!708,scores={CurrVotes=40..69},tag=!special] run function pc_core:teams/team_master
# 70 Votes
execute as @a[team=!707,scores={CurrVotes=70..109},tag=!special] run function pc_core:teams/team_knight
# 110 Votes
execute as @a[team=!706,scores={CurrVotes=110..159},tag=!special] run function pc_core:teams/team_magician
# 160 Votes
execute as @a[team=!705,scores={CurrVotes=160..214},tag=!special] run function pc_core:teams/team_sorcerer
# 215 Votes
execute as @a[team=!704,scores={CurrVotes=215..274},tag=!special] run function pc_core:teams/team_noble
# 275 Votes
execute as @a[team=!703,scores={CurrVotes=275..344},tag=!special] run function pc_core:teams/team_viscount
# 345 Votes
execute as @a[team=!702,scores={CurrVotes=345..419},tag=!special] run function pc_core:teams/team_duke
# 420 Votes
execute as @a[team=!701,scores={CurrVotes=420..499},tag=!special] run function pc_core:teams/team_archduke
# 500 Votes
execute as @a[team=!700,scores={CurrVotes=500..},tag=!special] run function pc_core:teams/team_king

# 0 - default     3 - 711     10 - 710     20 - 709     40 - 708     70 - 707     110 - 706     160 - 705     215 - 704     275 - 703     345 - 702     420 - 701     500 - 700

### DISCRIMINATORS ###
tag @a[tag=!specialrandom,team=300] add specialrandom
tag @a[tag=!specialrandom,team=301] add specialrandom
tag @a[tag=!specialrandom,team=320] add specialrandom
tag @a[tag=!specialrandom,team=321] add specialrandom
tag @a[tag=!highdonator,team=310] add highdonator
tag @a[tag=!highdonator,team=311] add highdonator
tag @a[tag=!highdonator,team=314] add highdonator
tag @a[tag=!lowdonator,team=312] add lowdonator
tag @a[tag=!lowdonator,team=313] add lowdonator
tag @a[tag=!lowdonator,team=315] add lowdonator
### HOMES ###
# 20 Votes
execute as @a[tag=!home2.can,scores={CurrVotes=20..}] run function pc_core:votes/20votes
# 50 Votes
execute as @a[tag=!home3.can,scores={CurrVotes=50..}] run function pc_core:votes/50votes
# 100 Votes
execute as @a[tag=!home4.can,scores={CurrVotes=100..}] run function pc_core:votes/100votes
# 250 Votes
execute as @a[tag=!home5.can,scores={CurrVotes=250..}] run function pc_core:votes/250votes
# 510 Votes
execute as @a[tag=!home6.can,scores={CurrVotes=510..}] run function pc_core:votes/510votes
# Special People <3
execute as @a[tag=specialrandom,tag=!home7.can] run function pc_core:utils/gives/tags/specialpeople
execute as @a[tag=lowdonator,tag=!home8.can] run function pc_core:utils/gives/tags/donatorslow
execute as @a[tag=highdonator,tag=!home9.can] run function pc_core:utils/gives/tags/donatorshigh
execute as @a[tag=OP,tag=!home10.can] run function pc_core:utils/gives/tags/staffhome
