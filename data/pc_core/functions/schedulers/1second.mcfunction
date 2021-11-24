execute if score 1s Database matches 3 run team modify Sponsor prefix "\u00A7aSponsor "
execute if score 1s Database matches 3 run team modify DonatorP prefix [{"text":"\u00A7aDonator+ \u00A77"}]
execute if score 1s Database matches 3 run scoreboard objectives setdisplay list uuid
execute if score 1s Database matches 3 run scoreboard players add 1s Database 1

execute if score 1s Database matches 2 run team modify Sponsor prefix "\u00A7eSponsor "
execute if score 1s Database matches 2 run team modify DonatorP prefix [{"text":"\u00A7eDonator+ \u00A77"}]
execute if score 1s Database matches 2 run scoreboard objectives setdisplay list stat.votes
execute if score 1s Database matches 2 run scoreboard players add 1s Database 1

execute if score 1s Database matches 1 run team modify Sponsor prefix "\u00A7bSponsor "
execute if score 1s Database matches 1 run team modify DonatorP prefix [{"text":"\u00A7bDonator+ \u00A77"}]
execute if score 1s Database matches 1 run scoreboard objectives setdisplay list uuid
execute if score 1s Database matches 1 run scoreboard players add 1s Database 1

execute if score 1s Database matches 0 run team modify Sponsor prefix "\u00A7dSponsor "
execute if score 1s Database matches 0 run team modify DonatorP prefix [{"text":"\u00A7dDonator+ \u00A77"}]
execute if score 1s Database matches 0 run scoreboard objectives setdisplay list stat.votes
execute if score 1s Database matches 0 run scoreboard players add 1s Database 1

execute if score 1s Database matches 4 run scoreboard players set 1s Database 0

function pc_core:trigger_helper

execute if score completed Database matches 0 run reload vanilla

schedule function pc_core:schedulers/1second 1s
