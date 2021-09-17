### PRE-FUNCTIONS ###
# STORE
execute as @a[scores={Store=1..}] at @s run function store:store
execute as @a[scores={Crate_Redstone=1..}] at @s run function store:crate_redstone
execute as @a[scores={Crate_Building=1..}] at @s run function store:crate_building
execute as @a[scores={Crate_Farming=1..}] at @s run function store:crate_farming
execute as @a[scores={Crate_Ores=1..}] at @s run function store:crate_ores
execute as @a[scores={Crate_Nether=1..}] at @s run function store:crate_nether
execute as @a[scores={Crate_Specials=1..}] at @s run function store:crate_specials
execute as @a[scores={Crate_Seventeen=1..}] at @s run function store:crate_seventeen
# RESET
execute as @a[scores={TriggerReset=1..}] at @s run function pc_core:essentials/trigger_reset
# TELLRAW
execute as @a[scores={Rules=1..}] at @s run function pc_core:essentials/rules
#execute as @a[scores={Login=1..}] at @s run function pc_core:utils/helpers/login
execute as @a[scores={Tutorial=1..}] at @s run function pc_core:essentials/tutorial
execute as @a[scores={Bugs=1..}] at @s run function pc_core:regulars/bugs
execute as @a[scores={Help=1..}] at @s run function pc_core:essentials/help
# SURVIVAL
execute as @a[scores={Survival=1..},tag=!t.ingame] at @s run function pc_core:essentials/survival
execute as @a[scores={Survival=1..},tag=t.ingame] at @s run tellraw @s [{"text":"Sorry, that is disabled right now. (You're in a protected area!)","color":"red"}]
execute as @a[scores={Survival=1..},tag=t.ingame] at @s run scoreboard players reset @s Survival
execute as @a[scores={Survival=1..},tag=t.ingame] at @s run scoreboard players enable @a Survival
# VIEW
execute as @a[scores={ViewWalkTime=1..}] at @s run function pc_core:essentials/view/view_walk_time
execute as @a[scores={ViewKarma=1..}] at @s run function pc_core:essentials/view/view_karma
# AFK
execute as @a[scores={AFK=1..},tag=!pc.afk] at @s run function pc_core:essentials/afk
execute as @a[scores={AFK=1..},tag=pc.afk] at @s run function pc_core:essentials/afk2
# CHAT EMOTES
execute as @a[scores={Shrug=1..}] at @s run function pc_core:regulars/shrug
execute as @a[scores={TableFlip=1..}] at @s run function pc_core:regulars/tableflip
# LINKS
execute as @a[scores={Vote=1..}] at @s run function pc_core:essentials/vote
execute as @a[scores={Discord=1..}] at @s run function pc_core:essentials/discord
execute as @a[scores={Donate=1..}] at @s run function pc_core:essentials/donate
# UUID USE
#- See
execute as @a[scores={SeeAllUUIDs=1..}] at @s run function pc_core:essentials/seeuuids
#- TPA
execute as @a[scores={TPDeny=1..}] at @s run function pc_core:essentials/tpa/tpdeny
execute as @a[scores={TPAccept=1..}] at @s run function pc_core:essentials/tpa/tpaccept
# HOME / SPAWNPOINT
execute as @a[scores={SetHome=1..}] at @s run function pc_core:essentials/sethome
execute as @a[scores={Home=1..}] at @s run function pc_core:essentials/home
execute as @a[scores={Die=1..}] at @s run function pc_core:essentials/die
execute as @a[scores={SpawnPoint=1..}] at @s run function pc_core:essentials/spawnpoint
# WARPS / TELEPORTATION
execute as @a[scores={SetSpawn=1..}] at @s run function pc_core:essentials/set_spawn
execute as @a[scores={TPEnd=1..}] at @s run function pc_core:essentials/try/tp_end_try
execute as @a[scores={RTP=1..}] at @s run function pc_core:essentials/try/rtp_try
# BUY
#- XP
execute as @a[scores={Buy_50XP=1..}] at @s run function pc_core:shop/buy_50xp
execute as @a[scores={Buy_500XP=1..}] at @s run function pc_core:shop/buy_500xp
execute as @a[scores={Buy_5000XP=1..}] at @s run function pc_core:shop/buy_5000xp
#- Other
execute as @a[scores={Shulker=1..}] at @s run function pc_core:shop/buy_shulker_try
execute as @a[scores={BuyRTP=1..}] at @s run function pc_core:shop/buy_rtp_try
# BOUGHT RANKS
execute as @a[scores={Firework=1},tag=special] at @s run function pc_core:specials/firework
execute as @a[scores={Taunt=1..}] at @s run function pc_core:specials/taunt
# TOGGLE
#- Reg
execute as @a[scores={ToggleParticle=1..}] at @s run function pc_core:essentials/toggleparticle
