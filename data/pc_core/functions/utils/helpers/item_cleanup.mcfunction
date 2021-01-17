# Counter.
scoreboard players add IB Database 1
# Count down.
execute if score IB Database matches 2 run tellraw @a [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A7610 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 2 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A7610 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 40 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A768 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 80 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A766 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 100 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A765 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 120 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A764 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 140 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A763 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 160 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A762 \u00A7cseconds...","color":"red"}]
execute if score IB Database matches 180 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A761 \u00A7csecond...","color":"red"}]
execute if score IB Database matches 200 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items now...","color":"red"}]
execute if score IB Database matches 200 store result score IC Database run execute if entity @e[type=item]
execute if score IB Database matches 200 run tp @e[type=item] ~ ~-270 ~
execute if score IB Database matches 200 run tellraw @a [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"score":{"name":"IC","objective":"Database"},"color":"gold"},{"text":" items cleared!","color":"red"}]
execute if score IB Database matches 200 run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Cleared!","color":"red"}]
execute if score IB Database matches 200 run scoreboard players reset IB Database
