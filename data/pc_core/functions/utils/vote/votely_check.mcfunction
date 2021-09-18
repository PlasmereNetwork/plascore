### TEAMS ###
execute as @a[team=!default,scores={stat.votes=..2},tag=!special,tag=firstTagged] run function pc_core:teams/ncfix
# 3 votes
execute as @a[team=!711,scores={stat.votes=3..9},tag=!special] run function pc_core:teams/team_villager
# 10 votes
execute as @a[team=!710,scores={stat.votes=10..19},tag=!special] run function pc_core:teams/team_warrior
# 20 votes
execute as @a[team=!709,scores={stat.votes=20..39},tag=!special] run function pc_core:teams/team_expeditioner
# 40 votes
execute as @a[team=!708,scores={stat.votes=40..69},tag=!special] run function pc_core:teams/team_master
# 70 votes
execute as @a[team=!707,scores={stat.votes=70..109},tag=!special] run function pc_core:teams/team_knight
# 110 votes
execute as @a[team=!706,scores={stat.votes=110..159},tag=!special] run function pc_core:teams/team_magician
# 160 votes
execute as @a[team=!705,scores={stat.votes=160..214},tag=!special] run function pc_core:teams/team_sorcerer
# 215 votes
execute as @a[team=!704,scores={stat.votes=215..274},tag=!special] run function pc_core:teams/team_noble
# 275 votes
execute as @a[team=!703,scores={stat.votes=275..344},tag=!special] run function pc_core:teams/team_viscount
# 345 votes
execute as @a[team=!702,scores={stat.votes=345..419},tag=!special] run function pc_core:teams/team_duke
# 420 votes
execute as @a[team=!701,scores={stat.votes=420..499},tag=!special] run function pc_core:teams/team_archduke
# 500 votes
execute as @a[team=!700,scores={stat.votes=500..},tag=!special] run function pc_core:teams/team_king

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
# 20 votes
execute as @a[tag=!home2.can,scores={stat.votes=20..}] run function pc_core:votes/20votes
# 50 votes
execute as @a[tag=!home3.can,scores={stat.votes=50..}] run function pc_core:votes/50votes
# 100 votes
execute as @a[tag=!home4.can,scores={stat.votes=100..}] run function pc_core:votes/100votes
# 250 votes
execute as @a[tag=!home5.can,scores={stat.votes=250..}] run function pc_core:votes/250votes
# 510 votes
execute as @a[tag=!home6.can,scores={stat.votes=510..}] run function pc_core:votes/510votes
# Special People <3
execute as @a[tag=specialrandom,tag=!home7.can] run function pc_core:utils/gives/tags/specialpeople
execute as @a[tag=lowdonator,tag=!home8.can] run function pc_core:utils/gives/tags/donatorslow
execute as @a[tag=highdonator,tag=!home9.can] run function pc_core:utils/gives/tags/donatorshigh
execute as @a[tag=OP,tag=!home10.can] run function pc_core:utils/gives/tags/staffhome
