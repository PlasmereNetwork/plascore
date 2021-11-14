bossbar add plasmere "\u00a72Vote Party \u00a78- \u00a760\u00a78/\u00a7650"

scoreboard objectives add items dummy

scoreboard objectives add random dummy

scoreboard objectives add store trigger
scoreboard objectives add crate_farming trigger
scoreboard objectives add crate_redstone trigger
scoreboard objectives add crate_building trigger
scoreboard objectives add crate_ores trigger
scoreboard objectives add crate_nether trigger
scoreboard objectives add crate_specials trigger

scoreboard objectives add buy_5000xp trigger
scoreboard objectives add buy_500xp trigger
scoreboard objectives add buy_50xp trigger
scoreboard objectives add buy_shulker trigger
scoreboard objectives add buy_rtp trigger
scoreboard objectives add diamond_mined minecraft.mined:minecraft.diamond_ore
scoreboard objectives add diamond_mined_time dummy
scoreboard objectives add event.login minecraft.custom:minecraft.leave_game

scoreboard objectives add sleep dummy
scoreboard objectives add triggerreset trigger
# Others.
scoreboard objectives add Crate dummy [{"text":"Themed Crates"}]
scoreboard objectives add Database dummy [{"text":"Database of Scores"}]
scoreboard objectives add Deaths deathCount
scoreboard objectives add Karma dummy [{"text":"Karma Points","color":"red"}]
scoreboard objectives add WalkTime minecraft.custom:minecraft.walk_one_cm [{"text":"Centimeters Walked"}]
scoreboard objectives add Stats dummy [{"text":"Templex Statistics"}]
scoreboard objectives add uuid dummy [{"text":"User Unique ID"}]
scoreboard objectives add votes dummy
scoreboard objectives add Xray dummy
scoreboard objectives add VotePartyTick dummy
scoreboard objectives add SellItems dummy
scoreboard objectives add SprintTime minecraft.custom:minecraft.sprint_one_cm [{"text":"Centimeters Sprinted"}]
scoreboard objectives add TotalTime dummy [{"text":"Centimeters in Total"}]
scoreboard objectives add FlyTime minecraft.custom:minecraft.fly_one_cm [{"text":"Centimeters Flown"}]
scoreboard objectives add Health health [{"text":"Player Health"}]
scoreboard objectives add VP dummy [{"text":"VoteParty Boolean"}]
scoreboard objectives add voteAdd dummy [{"text":"KM to Add for Voting"}]
scoreboard objectives add stat.votes dummy [{"text":"\u00A73Votes"}]
scoreboard objectives add diavotes dummy
scoreboard objectives add getvoted dummy
# Tell.
scoreboard players set @s triggerreset 1
tellraw @a [{"text":"Score Setup","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Added all objectives back.","color":"green"}]
# Setup Database
scoreboard players set -1 Database -1
scoreboard players set 0 Database 0
scoreboard players set 1 Database 1
scoreboard players set 2 Database 2
scoreboard players set 3 Database 3

bossbar set minecraft:plasmere name [{"text":"\u00A72Vote Party \u00A78- "},{"score":{"name":"VP","objective":"Database"},"color":"gold"},{"text":"\u00A78/"},{"score":{"name":"VPM","objective":"Database"},"color":"gold"}]
bossbar set minecraft:plasmere style notched_12
bossbar set minecraft:plasmere color blue
scoreboard players set VPM Database 50
execute store result bossbar minecraft:plasmere max run scoreboard players get VPM Database

# Objective Displays:
scoreboard objectives setdisplay belowName stat.votes