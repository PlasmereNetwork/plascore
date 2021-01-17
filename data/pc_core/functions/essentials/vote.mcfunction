tellraw @s [{"text":"\u00A7dIf you wish to vote, click this link","color":"light_purple"},{"text":": ","color":"dark_gray"},{"text":"http://vote.plasmere.net/","color":"aqua","bold":"true","underline":"true","hoverEvent":{"action":"show_text","value":"\u00A76http://vote.plasmere.net/"},"clickEvent":{"action":"open_url","value":"https://plasmere.tebex.io/vote/"}}]
scoreboard players enable @a Vote
scoreboard players set @a Vote 0
playsound minecraft:block.note.xylophone master @s
