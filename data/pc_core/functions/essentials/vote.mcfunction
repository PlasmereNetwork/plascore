tellraw @s [{"text":"\u00A7dIf you wish to vote, click this link","color":"light_purple"},{"text":": ","color":"dark_gray"},{"text":"http://vote.plasmere.net/","color":"aqua","bold":"true","underline":"true","hoverEvent":{"action":"show_text","value":"\u00A76http://vote.plasmere.net/"},"clickEvent":{"action":"open_url","value":"https://plasmere.tebex.io/vote/"}}]
scoreboard players enable @a vote
scoreboard players set @a vote 0
playsound minecraft:block.note.xylophone master @s

schedule clear pc_core:schedulers/vote_say 5s