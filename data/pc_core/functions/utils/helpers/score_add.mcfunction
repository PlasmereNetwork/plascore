bossbar add plasmere "\u00a72Vote Party \u00a78- \u00a760\u00a78/\u00a7650"

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

scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy
scoreboard objectives add xPos2 dummy
scoreboard objectives add yPos2 dummy
scoreboard objectives add zPos2 dummy
scoreboard objectives add xPos3 dummy
scoreboard objectives add yPos3 dummy
scoreboard objectives add zPos3 dummy
scoreboard objectives add xPos4 dummy
scoreboard objectives add yPos4 dummy
scoreboard objectives add zPos4 dummy
scoreboard objectives add xPos5 dummy
scoreboard objectives add yPos5 dummy
scoreboard objectives add zPos5 dummy
scoreboard objectives add xPos6 dummy
scoreboard objectives add yPos6 dummy
scoreboard objectives add zPos6 dummy
scoreboard objectives add xPos7 dummy
scoreboard objectives add yPos7 dummy
scoreboard objectives add zPos7 dummy
scoreboard objectives add xPos8 dummy
scoreboard objectives add yPos8 dummy
scoreboard objectives add zPos8 dummy
scoreboard objectives add xPos9 dummy
scoreboard objectives add yPos9 dummy
scoreboard objectives add zPos9 dummy
scoreboard objectives add xPos10 dummy
scoreboard objectives add yPos10 dummy
scoreboard objectives add zPos10 dummy

scoreboard objectives add items dummy

scoreboard objectives add random dummy

scoreboard objectives add Store trigger
scoreboard objectives add Crate_Farming trigger
scoreboard objectives add Crate_Redstone trigger
scoreboard objectives add Crate_Building trigger
scoreboard objectives add Crate_Ores trigger
scoreboard objectives add Crate_Nether trigger
scoreboard objectives add Crate_Specials trigger

scoreboard objectives add Bugs trigger
scoreboard objectives add Buy_5000XP trigger
scoreboard objectives add Buy_500XP trigger
scoreboard objectives add Buy_50XP trigger
scoreboard objectives add Shulker trigger
scoreboard objectives add BuyRTP trigger
scoreboard objectives add Diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add DiamondTime dummy
scoreboard objectives add Die trigger
scoreboard objectives add Discord trigger
scoreboard objectives add Donate trigger
scoreboard objectives add Firework trigger
scoreboard objectives add Help trigger
scoreboard objectives add Home trigger
scoreboard objectives add Login minecraft.custom:minecraft.leave_game
scoreboard objectives add RTP trigger
scoreboard objectives add Rules trigger
scoreboard objectives add Secret trigger
scoreboard objectives add SeeAllUUIDs trigger
scoreboard objectives add SetHome trigger
scoreboard objectives add Shrug trigger
scoreboard objectives add sleep dummy
scoreboard objectives add Spawn trigger
scoreboard objectives add SetSpawn trigger
scoreboard objectives add SpawnPoint trigger
scoreboard objectives add Survival trigger
scoreboard objectives add Taunt trigger
scoreboard objectives add ToggleParticle trigger
scoreboard objectives add TPA trigger
scoreboard objectives add TPAccept trigger
scoreboard objectives add TPAFind dummy
scoreboard objectives add TPARequest dummy
scoreboard objectives add TPDeny trigger
scoreboard objectives add TPEnd trigger
scoreboard objectives add TriggerReset trigger
scoreboard objectives add Tutorial trigger
scoreboard objectives add ViewKarma trigger
scoreboard objectives add ViewWalkTime trigger
scoreboard objectives add Vote trigger
scoreboard objectives add ZeldaTime dummy
scoreboard objectives add SetHome trigger
# Others.
scoreboard objectives add Crate dummy [{"text":"Themed Crates"}]
scoreboard objectives add Database dummy [{"text":"Database of Scores"}]
scoreboard objectives add Deaths deathCount
scoreboard objectives add Karma dummy [{"text":"Karma Points","color":"red"}]
scoreboard objectives add WalkTime minecraft.custom:minecraft.walk_one_cm [{"text":"Centimeters Walked"}]
scoreboard objectives add RTPs dummy
scoreboard objectives add Stats dummy [{"text":"Templex Statistics"}]
scoreboard objectives add UUID dummy [{"text":"User Unique ID"}]
scoreboard objectives add Votes dummy
scoreboard objectives add Xray dummy
scoreboard objectives add rtp.xpos dummy
scoreboard objectives add rtp.ypos dummy
scoreboard objectives add rtp.zpos dummy
scoreboard objectives add die.bool deathCount [{"text":"Deaths Boolean"}]
scoreboard objectives add die.xpos dummy
scoreboard objectives add die.ypos dummy
scoreboard objectives add die.zpos dummy
scoreboard objectives add VotePartyTick dummy
scoreboard objectives add SellItems dummy
scoreboard objectives add xpos.ram dummy
scoreboard objectives add ypos.ram dummy
scoreboard objectives add zpos.ram dummy
scoreboard objectives add SprintTime minecraft.custom:minecraft.sprint_one_cm [{"text":"Centimeters Sprinted"}]
scoreboard objectives add TotalTime dummy [{"text":"Centimeters in Total"}]
scoreboard objectives add FlyTime minecraft.custom:minecraft.fly_one_cm [{"text":"Centimeters Flown"}]
scoreboard objectives add Health health [{"text":"Player Health"}]
scoreboard objectives add VP dummy [{"text":"VoteParty Boolean"}]
scoreboard objectives add VoteAdd dummy [{"text":"KM to Add for Voting"}]
scoreboard objectives add CurrVotes dummy [{"text":"Votes - Current Reset"}]
scoreboard objectives add DiaVotes dummy
scoreboard objectives add GetVoted dummy
# Tell.
scoreboard players set @s TriggerReset 1
tellraw @a [{"text":"Score Setup","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Added all objectives back.","color":"green"}]
# Setup Database
scoreboard players set -1 Database -1
scoreboard players set 0 Database 0
scoreboard players set 1 Database 1
scoreboard players set 2 Database 2
scoreboard players set 3 Database 3

bossbar set minecraft:plasmere name [{"text":"\u00A72Vote Party \u00A78- "},{"score":{"name":"VP","objective":"Database"},"color":"gold"},{"text":"\u00A78/"},{"score":{"name":"VPM","objective":"Database"},"color":"gold"}]
scoreboard players set VPM Database 50
execute store result bossbar minecraft:plasmere max run scoreboard players get VPM Database