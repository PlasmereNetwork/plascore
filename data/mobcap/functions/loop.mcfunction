### Loop ###
execute store result score <MobCount> value if entity @e[type=#mobcap:kill,nbt=!{PersistenceRequired:1b},tag=!NOKILL]

execute if score <MobCount> value >= <MobCap> value run tellraw @a[tag=mcap.listener] [{"text":"\u00A76MOBCAP \u00A78: \u00a7aThere are now "},{"score":{"name":"<MobCount>","objective":"value"},"color":"gold"},{"text":" found entities of a max of ","color":"green"},{"score":{"name":"<MobCap>","objective":"value"},"color":"gold"},{"text":" entities... Killing \u00A7650\u00A7a...","color":"green"}]

execute if score <MobCount> value >= <MobCap> value as @e[type=#mobcap:kill,nbt=!{PersistenceRequired:1b},tag=!NOKILL,limit=100] at @s run function mobcap:kill

schedule function mobcap:loop 1s
