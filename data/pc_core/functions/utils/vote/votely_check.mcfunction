### TEAMS ###
execute as @a[team=!712,scores={CurrVotes=..2},tag=!special] run function pc_core:ncfix
# 5 Votes
execute as @a[team=!711,scores={CurrVotes=3..9},tag=!special] run function pc_core:team_villager
# 15 Votes
execute as @a[team=!710,scores={CurrVotes=10..19},tag=!special] run function pc_core:team_warrior
# 30 Votes
execute as @a[team=!709,scores={CurrVotes=20..39},tag=!special] run function pc_core:team_expeditioner
# 60 Votes
execute as @a[team=!708,scores={CurrVotes=40..69},tag=!special] run function pc_core:team_master
# 100 Votes
execute as @a[team=!707,scores={CurrVotes=70..109},tag=!special] run function pc_core:team_knight
# 150 Votes
execute as @a[team=!706,scores={CurrVotes=110..159},tag=!special] run function pc_core:team_magician
# 220 Votes
execute as @a[team=!705,scores={CurrVotes=160..214},tag=!special] run function pc_core:team_sorcerer
# 280 Votes
execute as @a[team=!704,scores={CurrVotes=215..274},tag=!special] run function pc_core:team_noble
# 310 Votes
execute as @a[team=!703,scores={CurrVotes=275..344},tag=!special] run function pc_core:team_viscount
# 370 Votes
execute as @a[team=!702,scores={CurrVotes=345..419},tag=!special] run function pc_core:team_duke
# 440 Votes
execute as @a[team=!701,scores={CurrVotes=420..499},tag=!special] run function pc_core:team_archduke
# 500 Votes
execute as @a[team=!700,scores={CurrVotes=500..},tag=!special] run function pc_core:team_king

#10      20      40      70      110     160     215     275     345     420     500

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
execute as @a[tag=!home2.can,scores={CurrVotes=20..}] run function pc_core:20votes
# 50 Votes
execute as @a[tag=!home3.can,scores={CurrVotes=50..}] run function pc_core:50votes
# 100 Votes
execute as @a[tag=!home4.can,scores={CurrVotes=100..}] run function pc_core:100votes
# 250 Votes
execute as @a[tag=!home5.can,scores={CurrVotes=250..}] run function pc_core:250votes
# 510 Votes
execute as @a[tag=!home6.can,scores={CurrVotes=510..}] run function pc_core:510votes
# Special People <3
execute as @a[tag=specialrandom,tag=!home7.can] run function pc_core:specialpeople
execute as @a[tag=lowdonator,tag=!home8.can] run function pc_core:donatorslow
execute as @a[tag=highdonator,tag=!home9.can] run function pc_core:donatorshigh
execute as @a[tag=op,tag=!home10.can] run function pc_core:staffhome
