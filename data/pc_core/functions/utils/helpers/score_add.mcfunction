bossbar add plasmere "\u00a72vote Party \u00a78- \u00a760\u00a78/\u00a7650"

scoreboard objectives add dim1 dummy
scoreboard objectives add dim2 dummy
scoreboard objectives add dim3 dummy
scoreboard objectives add dim4 dummy
scoreboard objectives add dim5 dummy
scoreboard objectives add dim6 dummy
scoreboard objectives add dim7 dummy
scoreboard objectives add dim8 dummy
scoreboard objectives add dim9 dummy
scoreboard objectives add dim10 dummy

scoreboard objectives add xpos dummy
scoreboard objectives add ypos dummy
scoreboard objectives add zpos dummy
scoreboard objectives add xpos2 dummy
scoreboard objectives add ypos2 dummy
scoreboard objectives add zpos2 dummy
scoreboard objectives add xpos3 dummy
scoreboard objectives add ypos3 dummy
scoreboard objectives add zpos3 dummy
scoreboard objectives add xpos4 dummy
scoreboard objectives add ypos4 dummy
scoreboard objectives add zpos4 dummy
scoreboard objectives add xpos5 dummy
scoreboard objectives add ypos5 dummy
scoreboard objectives add zpos5 dummy
scoreboard objectives add xpos6 dummy
scoreboard objectives add ypos6 dummy
scoreboard objectives add zpos6 dummy
scoreboard objectives add xpos7 dummy
scoreboard objectives add ypos7 dummy
scoreboard objectives add zpos7 dummy
scoreboard objectives add xpos8 dummy
scoreboard objectives add ypos8 dummy
scoreboard objectives add zpos8 dummy
scoreboard objectives add xpos9 dummy
scoreboard objectives add ypos9 dummy
scoreboard objectives add zpos9 dummy
scoreboard objectives add xpos10 dummy
scoreboard objectives add ypos10 dummy
scoreboard objectives add zpos10 dummy

scoreboard objectives add items dummy

scoreboard objectives add random dummy

scoreboard objectives add store trigger
scoreboard objectives add crate_farming trigger
scoreboard objectives add crate_redstone trigger
scoreboard objectives add crate_building trigger
scoreboard objectives add crate_ores trigger
scoreboard objectives add crate_nether trigger
scoreboard objectives add crate_specials trigger

scoreboard objectives add bugs trigger
scoreboard objectives add buy_5000xp trigger
scoreboard objectives add buy_500xp trigger
scoreboard objectives add buy_50xp trigger
scoreboard objectives add buy_shulker trigger
scoreboard objectives add buy_rtp trigger
scoreboard objectives add diamond_mined minecraft.mined:minecraft.diamond_ore
scoreboard objectives add diamond_mined_time dummy
scoreboard objectives add die trigger
scoreboard objectives add discord trigger
scoreboard objectives add donate trigger
scoreboard objectives add firework trigger
scoreboard objectives add help trigger
scoreboard objectives add home trigger
scoreboard objectives add event.login minecraft.custom:minecraft.leave_game

scoreboard objectives add rtp trigger
scoreboard objectives add rtp.back trigger

scoreboard objectives add rules trigger
scoreboard objectives add secret trigger
scoreboard objectives add seealluuids trigger
scoreboard objectives add sethome trigger
scoreboard objectives add shrug trigger
scoreboard objectives add sleep dummy
scoreboard objectives add spawn trigger
scoreboard objectives add setspawn trigger
scoreboard objectives add spawnpoint trigger
scoreboard objectives add gm.survival trigger
scoreboard objectives add taunt trigger
scoreboard objectives add toggleparticle trigger
scoreboard objectives add tpa trigger
scoreboard objectives add tpaccept trigger
scoreboard objectives add tpafind dummy
scoreboard objectives add tparequest dummy
scoreboard objectives add tpdeny trigger
scoreboard objectives add tpend trigger
scoreboard objectives add triggerreset trigger
scoreboard objectives add tutorial trigger
scoreboard objectives add viewkarma trigger
scoreboard objectives add viewwalktime trigger
scoreboard objectives add vote trigger
scoreboard objectives add zeldatime dummy
scoreboard objectives add sethome trigger
# Others.
scoreboard objectives add Buycraft dummy [{"text":"Buycraft Logic"}]
scoreboard objectives add Crate dummy [{"text":"Themed Crates"}]
scoreboard objectives add Database dummy [{"text":"Database of Scores"}]
scoreboard objectives add Deaths deathCount
scoreboard objectives add Karma dummy [{"text":"Karma Points","color":"red"}]
scoreboard objectives add WalkTime minecraft.custom:minecraft.walk_one_cm [{"text":"Centimeters Walked"}]
scoreboard objectives add rtps dummy
scoreboard objectives add Stats dummy [{"text":"Templex Statistics"}]
scoreboard objectives add uuid dummy [{"text":"User Unique ID"}]
scoreboard objectives add votes dummy
scoreboard objectives add Xray dummy
scoreboard objectives add rtp.xpos dummy
scoreboard objectives add rtp.ypos dummy
scoreboard objectives add rtp.zpos dummy
scoreboard objectives add rtp.dim dummy
scoreboard objectives add die.bool deathCount [{"text":"Deaths Boolean"}]
scoreboard objectives add die.xpos dummy
scoreboard objectives add die.ypos dummy
scoreboard objectives add die.zpos dummy
scoreboard objectives add votePartyTick dummy
scoreboard objectives add SellItems dummy
scoreboard objectives add xpos.ram dummy
scoreboard objectives add ypos.ram dummy
scoreboard objectives add zpos.ram dummy
scoreboard objectives add SprintTime minecraft.custom:minecraft.sprint_one_cm [{"text":"Centimeters Sprinted"}]
scoreboard objectives add TotalTime dummy [{"text":"Centimeters in Total"}]
scoreboard objectives add FlyTime minecraft.custom:minecraft.fly_one_cm [{"text":"Centimeters Flown"}]
scoreboard objectives add Health health [{"text":"Player Health"}]
scoreboard objectives add VP dummy [{"text":"voteParty Boolean"}]
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

bossbar set minecraft:plasmere name [{"text":"\u00A72vote Party \u00A78- "},{"score":{"name":"VP","objective":"Database"},"color":"gold"},{"text":"\u00A78/"},{"score":{"name":"VPM","objective":"Database"},"color":"gold"}]
bossbar set minecraft:plasmere style notched_12
bossbar set minecraft:plasmere color blue
scoreboard players set VPM Database 50
execute store result bossbar minecraft:plasmere max run scoreboard players get VPM Database

# Objective Displays:
scoreboard objectives setdisplay belowName stat.votes