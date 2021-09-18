tellraw @a [{"text":"Want to check out our Discord? Just click on this link: ","color":"red","italic":"true"},{"text":"https://discord.gg/VgnUAWx","color":"aqua","italic":"true","bold":"true","hoverEvent":{"action":"show_text","value":"\u00A76https://discord.gg/mCjwkjF"},"clickEvent":{"action":"open_url","value":"https://discord.gg/mCjwkjF"}}]
tellraw @a[tag=OP] [{"text":"Discord Teller","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":" Just showed \u00A7aALL \u00A7cthe Discord link!","color":"red"}]

scoreboard players enable @a discord

schedule function pc_core:schedulers/discordtell 1d
