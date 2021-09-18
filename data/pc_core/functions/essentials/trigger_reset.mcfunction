# STORE
scoreboard players enable @a store
scoreboard players enable @a Buy_Crate_Basic
scoreboard players enable @a Buy_Crate_Rare
scoreboard players enable @a Buy_Crate_Epic
scoreboard players enable @a Buy_Crate_Cosmic

scoreboard players enable @a crate_farming
scoreboard players enable @a crate_redstone
scoreboard players enable @a crate_building
scoreboard players enable @a crate_ores
scoreboard players enable @a crate_nether
scoreboard players enable @a crate_specials

scoreboard players enable @a rules
scoreboard players enable @a spawnpoint
scoreboard players enable @a spawn
scoreboard players enable @a tpend
scoreboard players enable @a Commands
scoreboard players enable @a home
scoreboard players enable @a[tag=OP] Shome
#scoreboard players enable @a ViewPlayTime
scoreboard players enable @a viewkarma
scoreboard players enable @a vote
scoreboard players enable @a triggerreset
scoreboard players enable @a gm.survival
scoreboard players reset @a[tag=InProtection] gm.survival
scoreboard players enable @a rtp
scoreboard players enable @a rtp.back
scoreboard players enable @a toggleparticle
scoreboard players enable @a ToggleSpam
scoreboard players enable @a tutorial
scoreboard players enable @a Survey
scoreboard players enable @a tpa
execute as @p[tag=tpaing] run scoreboard players reset @a[tag=!tpaing] tpa
scoreboard players enable @a tpaccept
scoreboard players enable @a discord
scoreboard players enable @a tpdeny
scoreboard players enable @a donate
scoreboard players enable @a sethome
scoreboard players enable @a ToggleSpam
scoreboard players enable @a die
scoreboard players enable @a voteDay
scoreboard players enable @a voteNight
scoreboard players enable @a viewwalktime
scoreboard players enable @a seealluuids
scoreboard players enable @a Lock
#scoreboard players enable @a Ping
### TELLRAW
# Contest
scoreboard players enable @a Contest
# bugs
scoreboard players enable @a bugs
scoreboard players enable @a help
scoreboard players enable @a LoadChunks
# Other
scoreboard players enable @a shrug
### TOGGLES
# Potions
#scoreboard players enable @a ToggleHaste
### Minigames
#scoreboard players enable @a tparena
#scoreboard players enable @a TPZombs
#scoreboard players enable @a SeeZombsStats
#scoreboard players enable @a TPOP
#scoreboard players enable @a SelectClass
### All Buyable Items
scoreboard players enable @a Mall
# Indirect Items
scoreboard players enable @a buy_shulker
# Not in store
scoreboard players enable @a buy_rtp
scoreboard players enable @a buy_50xp
scoreboard players enable @a buy_500xp
### Perks
scoreboard players enable @a[tag=special] firework
scoreboard players enable @a toggleparticle
#scoreboard players enable @a[tag=parttag] toggleparticle
scoreboard players enable @a[tag=special] secret
scoreboard players enable @a[tag=special] taunt
### These must happen (in this order) at the end of the script
tellraw @s [{"text":"\u00A76Trigger Reset System \u00A78: \u00A7aAll triggers have been re-enabled!","color":"green","italic":"false"}]
tellraw @a[tag=OP] [{"text":"Trigger Reset System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just reset all triggers.","color":"red"}]
execute at @s run playsound minecraft:block.note_block.xylophone master @s
tag @a[tag=InProtection] remove InProtection

# Reset.
scoreboard players reset @a triggerreset
scoreboard players enable @a triggerreset
