scoreboard players add @a Karma 2
scoreboard players add @a[team=Alchemist] Karma 3
scoreboard players add @a[tag=special] Karma 5
scoreboard players add @a[team=Templexian] Karma 10
scoreboard players add @a[tag=OP] Karma 15
scoreboard players add @a[team=Manager] Karma 8
scoreboard players add @a[team=Owner] Karma 13

tellraw @a[tag=!special] [{"text":"Received +2 Karma!","color":"aqua"}]
tellraw @a[tag=special,team=!Alchemist,team=!Templexian,tag=!OP] [{"text":"Received +7 Karma!","color":"aqua"}]
tellraw @a[team=Alchemist] [{"text":"Received +10 Karma!","color":"aqua"}]
tellraw @a[team=Templexian] [{"text":"Received +17 Karma!","color":"aqua"}]
tellraw @a[tag=OP,team=!Manager,team=!Owner] [{"text":"Received +22 Karma!","color":"aqua"}]
tellraw @a[team=Manager] [{"text":"Received +30 Karma!","color":"aqua"}]
tellraw @a[team=Owner] [{"text":"Received +35 Karma!","color":"aqua"}]

scoreboard players add @a[scores={VP=1..}] Karma 2
scoreboard players add @a[team=Alchemist,scores={VP=1..}] Karma 3
scoreboard players add @a[tag=special,scores={VP=1..}] Karma 5
scoreboard players add @a[team=Templexian,scores={VP=1..}] Karma 10
scoreboard players add @a[tag=OP,scores={VP=1..}] Karma 15
scoreboard players add @a[team=Manager,scores={VP=1..}] Karma 8
scoreboard players add @a[team=Owner,scores={VP=1..}] Karma 13

tellraw @a[tag=!special,scores={VP=1..}] [{"text":"Received +2 Karma!","color":"aqua"}]
tellraw @a[tag=special,team=!Alchemist,team=!Templexian,tag=!OP,scores={VP=1..}] [{"text":"Received +7 Karma! (VoteParty Love)","color":"aqua"}]
tellraw @a[team=Alchemist,scores={VP=1..}] [{"text":"Received +10 Karma! (VoteParty Love)","color":"aqua"}]
tellraw @a[team=Templexian,scores={VP=1..}] [{"text":"Received +17 Karma! (VoteParty Love)","color":"aqua"}]
tellraw @a[tag=OP,team=!Manager,team=!Owner,scores={VP=1..}] [{"text":"Received +22 Karma! (VoteParty Love)","color":"aqua"}]
tellraw @a[team=Manager,scores={VP=1..}] [{"text":"Received +30 Karma! (VoteParty Love)","color":"aqua"}]
tellraw @a[team=Owner,scores={VP=1..}] [{"text":"Received +35 Karma! (VoteParty Love)","color":"aqua"}]
