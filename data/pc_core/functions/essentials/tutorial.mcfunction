execute as @s[scores={Tutorial=1}] run tag @s add Tut1
execute as @s[scores={Tutorial=2}] run tag @s add Tut2
execute as @s[scores={Tutorial=3}] run tag @s add Tut3
execute as @s[scores={Tutorial=4}] run tag @s add Tut4
execute as @s[scores={Tutorial=6..}] run tag @s add WTut

execute as @s[tag=Tut1] run tellraw @s [{"text":"\u00A77-- Tutorial Page 1 of 4 --\n\u00A7dThe whole purpose of our server is to allow players to enjoy survival with a community of people without the pressure of losing your stuff\u00A78.\n\u00A7dTo get started\u00A78...\n\u00A7b1st\u00A78: \u00A7dType \u00A78'\u00A7a/trigger Rules\u00A78' \u00A7dto see the \u00A7crules\u00A78.\n\u00A7b2nd\u00A78: \u00A7dType \u00A78'\u00A7a/trigger RTP\u00A78' \u00A7dto randomly teleport to a new spot\u00A78.","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wish to view.","color":"red"}]

execute as @s[tag=Tut2] run tellraw @s [{"text":"\u00A77-- Tutorial Page 2 of 4 --\n\u00A7dThis is strictly a \u00A7csurvival \u00A7dserver\u00A78; \u00A7dthis means you can only play survival\u00A78.\n\u00A7dPlease\u00A78, \u00A7ddo not ask for creative or items from creative\u00A78.\n\u00A7dHow do you play \u00A7csurvival\u00A78?\n\u00A7dYou use the steps on the previous page\u00A78, \u00A7dthen harvest materials\u00A78, \u00A7dbuild a house\u00A78, \u00A7dand enjoy the server\u00A78!","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wish to view.","color":"red"}]

execute as @s[tag=Tut3] run tellraw @s [{"text":"\u00A77-- Tutorial Page 3 of 4 --\n\u00A7dYou get \u00A7cKarma \u00A7das you play\u00A78: \u00A7dEvery \u00A765 \u00A7dminutes you get \u00A762 \u00A7cKarma Points\u00A78.\n\u00A7dYou also rank up by voting\u00A78: \u00A7dYou get \u00A7aNew \u00A7aComer \u00A7dupon join\u00A78, \u00A7dyou get \u00A7bVillager \u00A7dat \u00A763 \u00A7dVotes\u00A78, \u00A7dyou get \u00A78Warrior \u00A7dat \u00A7610 \u00A7dVotes\u00A78, \u00A7dExpeditioner at \u00A7620 \u00A7dVotes\u00A78, \u00A75Master \u00A7dat \u00A7640 \u00A7dVotes\u00A78, \u00A79Knight \u00A7dat \u00A7670 \u00A7dVotes\u00A78, \u00A76Magician \u00A7dat \u00A76110 \u00A7dVotes\u00A78, "},{"text":"Sorcerer \u00A7dat \u00A76160 \u00A7dVotes\u00A78, ","color":"#d18708"},{"text":"Noble \u00A7dat \u00A76215 \u00A7dVotes\u00A78, ","color":"#6a1fc4"},{"text":"Viscount \u00A7dat \u00A76275 \u00A7dVotes\u00A78, ","color":"#3c1170"},{"text":"Duke \u00A7dat \u00A76345 \u00A7dVotes\u00A78, ","color":"#0f611a"},{"text":"Archduke \u00A7dat \u00A76420 \u00A7dVotes\u00A78, ","color":"#2056f7"},{"text":"\u00A74King \u00A7dat \u00A76500 \u00A7dVotes \u00A78, \u00A7dand \u00A77Custom \u00A7dat \u00A76550 \u00A7dVotes \u00A78.","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wish to view.","color":"red"}]

execute as @s[tag=Tut4] run tellraw @s "\u00A77-- Tutorial Page 4 of 4 --\n\u00A7dHow does one set a \u00A7chome\u00A78? \u00A7dDo \u00A78'\u00A7a/trigger SetHome set \u00A78' \u00A7dfollowed by the number home you want to set\u00A78. \u00A7dCurrently\u00A78, \u00A7dYou can earn up to \u00A7c4 \u00A7dhomes by voting\u00A78, \u00A7dand a \u00A7c5\u00A7dth by donating\u00A78.\n\u00A7dYou earn new homes at \u00A7c20\u00A78, \u00A7c50\u00A78, \u00A7dand \u00A7c100 \u00A7dvotes\u00A78.\n\u00A7dYou can \u00A7cgo\u00A7d to your home by typing \u00A78'\u00A7a/trigger Home set \u00A78' \u00A7dfollowed by the number\u00A78.\n\n\u00A7dHow about \u00A7ctp\u00A7ding\u00A78?\n\u00A7b1. \u00A7dDo \u00A78'\u00A7a/trigger SeeAllUUIDs\u00A78' \u00A7dand find the \u00A7cnumber \u00A7dnext to the person you want to \u00A7ctp \u00A7dto\u00A78.\n\u00A7b2. \u00A7dDo \u00A78'\u00A7a/trigger TPA set \u00A78' \u00A7dfollowed by the \u00A7cUUID (number) \u00A7dof the person\u00A78.\n\u00A7b3. \u00A7dWait for the other person to tpye \u00A78'\u00A7a/trigger TPAccept\u00A78'."

execute as @s[tag=WTut] run tellraw @s [{"text":"\u00A77-- Tutorial Page 0 of 4 --\n\u00A7dYou need to do \u00A78'\u00A7a/trigger Tutorial set \u00A78' \u00A7dthen put a number between \u00A761 \u00A7dand \u00A764\u00A78. \u00A7dThanks\u00A78.","color":"light_purple"}]

tag @s remove Tut1
tag @s remove Tut2
tag @s remove Tut3
tag @s remove Tut4
tag @s remove WTut

scoreboard players set @s Tutorial 0
scoreboard players enable @a Tutorial
