# vp_payout
scoreboard players set div random 4
function pc_core:random

execute if score temp random matches 0 run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74\\u00A7k.\\u00A78Warrior\\u00A7f/\\u00A7dExpeditioner\\u00A74\\u00A7k. \\u00A75Crate\"}",Lore:["\"> ???\"","\"> ???\"","\"> ???\"","\"> ???\""]},BlockEntityTag:{LootTable:"pc_core:teams/warexped"}}
execute if score temp random matches 1 run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74\\u00A7k.\\u00A75Master\\u00A7f/\\u00A79Knight\\u00A74\\u00A7k. \\u00A75Crate\"}",Lore:["\"> ???\"","\"> ???\"","\"> ???\"","\"> ???\""]},BlockEntityTag:{LootTable:"pc_core:teams/masterknight"}}
execute if score temp random matches 2 run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74\\u00A7k.\\u00A7eMagician\\u00A7f/\\u00A76Sorceror\\u00A74\\u00A7k. \\u00A75Crate\"}",Lore:["\"> ???\"","\"> ???\"","\"> ???\"","\"> ???\""]},BlockEntityTag:{LootTable:"pc_core:teams/magisorcer"}}
execute if score temp random matches 3 run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74\\u00A7k.\\u00A75Noble\\u00A7f/\\u00A75Viscount\\u00A74\\u00A7k. \\u00A75Crate\"}",Lore:["\"> ???\"","\"> ???\"","\"> ???\"","\"> ???\""]},BlockEntityTag:{LootTable:"pc_core:teams/nobviscount"}}
execute if score temp random matches 4 run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74\\u00A7k.\\u00A72Duke\\u00A7f/\\u00A71Archduke\\u00A74\\u00A7k. \\u00A75Crate\"}",Lore:["\"> ???\"","\"> ???\"","\"> ???\"","\"> ???\""]},BlockEntityTag:{LootTable:"pc_core:teams/dukearch"}}
execute if score temp random matches 5 run give @s minecraft:chest{display:{Name:"{\"text\":\"\\u00A74\\u00A7k.\\u00A74King\\u00A7f/\\u00A77Special \\u00A78Player\\u00A74\\u00A7k. \\u00A75Crate\"}",Lore:["\"> ???\"","\"> ???\"","\"> ???\"","\"> ???\""]},BlockEntityTag:{LootTable:"pc_core:teams/kingspecial"}}
