# STORE
scoreboard players enable @a Store
scoreboard players enable @a Buy_Crate_Basic
scoreboard players enable @a Buy_Crate_Rare
scoreboard players enable @a Buy_Crate_Epic
scoreboard players enable @a Buy_Crate_Cosmic

scoreboard players enable @a Crate_Farming
scoreboard players enable @a Crate_Redstone
scoreboard players enable @a Crate_Building
scoreboard players enable @a Crate_Ores
scoreboard players enable @a Crate_Nether
scoreboard players enable @a Crate_Specials 

scoreboard players enable @a Rules
scoreboard players enable @a SpawnPoint
scoreboard players enable @a Spawn
scoreboard players enable @a TPEnd
scoreboard players enable @a Commands
scoreboard players enable @a Home
scoreboard players enable @a[tag=OP] SHome
#scoreboard players enable @a ViewPlayTime
scoreboard players enable @a ViewKarma
scoreboard players enable @a Vote
scoreboard players enable @a TriggerReset
scoreboard players enable @a Survival
scoreboard players reset @a[tag=InProtection] Survival
scoreboard players enable @a RTP
scoreboard players enable @a ToggleParticle
scoreboard players enable @a ToggleSpam
scoreboard players enable @a Tutorial
scoreboard players enable @a Survey
scoreboard players enable @a TPA
execute as @p[tag=TPAing] run scoreboard players reset @a[tag=!TPAing] TPA
scoreboard players enable @a TPAccept
scoreboard players enable @a Discord
scoreboard players enable @a TPDeny
scoreboard players enable @a Donate
scoreboard players enable @a SetHome
scoreboard players enable @a ToggleSpam
scoreboard players enable @a Die
scoreboard players enable @a VoteDay
scoreboard players enable @a VoteNight
scoreboard players enable @a ViewWalkTime
scoreboard players enable @a SeeAllUUIDs
scoreboard players enable @a Lock
#scoreboard players enable @a Ping
### TELLRAW
# Contest
scoreboard players enable @a Contest
# Bugs
scoreboard players enable @a Bugs
scoreboard players enable @a Help
scoreboard players enable @a LoadChunks
# Other
scoreboard players enable @a Shrug
### TOGGLES
# Potions
#scoreboard players enable @a ToggleHaste
### Minigames
#scoreboard players enable @a TPArena
#scoreboard players enable @a TPZombs
#scoreboard players enable @a SeeZombsStats
#scoreboard players enable @a TPOP
#scoreboard players enable @a SelectClass
### All Buyable Items
scoreboard players enable @a Mall
# Indirect Items
scoreboard players enable @a Shulker
# Not in Store
scoreboard players enable @a BuyRTP
scoreboard players enable @a Buy_50XP
scoreboard players enable @a Buy_500XP
### Perks
scoreboard players enable @a[tag=special] Firework
scoreboard players enable @a ToggleParticle
#scoreboard players enable @a[tag=parttag] ToggleParticle
scoreboard players enable @a[tag=special] Secret
scoreboard players enable @a[tag=special] Taunt
### These must happen (in this order) at the end of the script
tellraw @s [{"text":"\u00A76Trigger Reset System \u00A78: \u00A7aAll triggers have been re-enabled!","color":"green","italic":"false"}]
tellraw @a[tag=OP] [{"text":"Trigger Reset System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just reset all triggers.","color":"red"}]
execute at @s run playsound minecraft:block.note_block.xylophone master @s
tag @a[tag=InProtection] remove InProtection

# Reset.
scoreboard players reset @a TriggerReset
scoreboard players enable @a TriggerReset
