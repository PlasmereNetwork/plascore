### PRE-FUNCTIONS ###
# STORE
execute as @a[scores={store=1..}] at @s run function store:store
execute as @a[scores={crate_redstone=1..}] at @s run function store:crate_redstone
execute as @a[scores={crate_building=1..}] at @s run function store:crate_building
execute as @a[scores={crate_farming=1..}] at @s run function store:crate_farming
execute as @a[scores={crate_ores=1..}] at @s run function store:crate_ores
execute as @a[scores={crate_nether=1..}] at @s run function store:crate_nether
execute as @a[scores={crate_specials=1..}] at @s run function store:crate_specials
execute as @a[scores={Crate_Seventeen=1..}] at @s run function store:crate_seventeen
# RESET
execute as @a[scores={triggerreset=1..}] at @s run function pc_core:essentials/trigger_reset
# TELLRAW
execute as @a[scores={rules=1..}] at @s run function pc_core:essentials/rules
#execute as @a[scores={event.login=1..}] at @s run function pc_core:utils/helpers/login
execute as @a[scores={tutorial=1..}] at @s run function pc_core:essentials/tutorial
execute as @a[scores={bugs=1..}] at @s run function pc_core:regulars/bugs
execute as @a[scores={help=1..}] at @s run function pc_core:essentials/help
# SURVIVAL
execute as @a[scores={gm.survival=1..},tag=!t.ingame] at @s run function pc_core:essentials/survival
execute as @a[scores={gm.survival=1..},tag=t.ingame] at @s run tellraw @s [{"text":"Sorry, that is disabled right now. (You're in a protected area!)","color":"red"}]
execute as @a[scores={gm.survival=1..},tag=t.ingame] at @s run scoreboard players reset @s gm.survival
execute as @a[scores={gm.survival=1..},tag=t.ingame] at @s run scoreboard players enable @a gm.survival
# VIEW
execute as @a[scores={viewwalktime=1..}] at @s run function pc_core:essentials/view/view_walk_time
execute as @a[scores={viewkarma=1..}] at @s run function pc_core:essentials/view/view_karma
# AFK
execute as @a[scores={AFK=1..},tag=!pc.afk] at @s run function pc_core:essentials/afk
execute as @a[scores={AFK=1..},tag=pc.afk] at @s run function pc_core:essentials/afk2
# CHAT EMOTES
execute as @a[scores={shrug=1..}] at @s run function pc_core:regulars/shrug
execute as @a[scores={TableFlip=1..}] at @s run function pc_core:regulars/tableflip
# LINKS
execute as @a[scores={vote=1..}] at @s run function pc_core:essentials/vote
execute as @a[scores={discord=1..}] at @s run function pc_core:essentials/discord
execute as @a[scores={donate=1..}] at @s run function pc_core:essentials/donate
# uuid USE
#- See
execute as @a[scores={seealluuids=1..}] at @s run function pc_core:essentials/seeuuids
#- tpa
execute as @a[scores={tpdeny=1..}] at @s run function pc_core:essentials/tpa/tpdeny
execute as @a[scores={tpaccept=1..}] at @s run function pc_core:essentials/tpa/tpaccept
# HOME / SPAWNPOINT
execute as @a[scores={sethome=1..}] at @s run function pc_core:essentials/sethome
execute as @a[scores={home=1..}] at @s run function pc_core:essentials/home
execute as @a[scores={die=1..}] at @s run function pc_core:essentials/die
execute as @a[scores={spawnpoint=1..}] at @s run function pc_core:essentials/spawnpoint
# WARPS / TELEPORTATION
execute as @a[scores={setspawn=1..}] at @s run function pc_core:essentials/set_spawn
execute as @a[scores={tpend=1..}] at @s run function pc_core:essentials/try/tp_end_try
execute as @a[scores={rtp=1..}] at @s run function pc_core:essentials/try/rtp_try
execute as @a[scores={rtp.back=1..}] at @s run function pc_core:essentials/try/rtp_back/rtp_back
# BUY
#- XP
execute as @a[scores={buy_50xp=1..}] at @s run function pc_core:shop/buy_50xp
execute as @a[scores={buy_500xp=1..}] at @s run function pc_core:shop/buy_500xp
execute as @a[scores={buy_5000xp=1..}] at @s run function pc_core:shop/buy_5000xp
#- Other
execute as @a[scores={buy_shulker=1..}] at @s run function pc_core:shop/buy_buy_shulker_try
execute as @a[scores={buy_rtp=1..}] at @s run function pc_core:shop/buy_rtp_try
# BOUGHT RANKS
execute as @a[scores={firework=1},tag=special] at @s run function pc_core:specials/firework
execute as @a[scores={taunt=1..}] at @s run function pc_core:specials/taunt
# TOGGLE
#- Reg
execute as @a[scores={toggleparticle=1..}] at @s run function pc_core:essentials/toggleparticle
