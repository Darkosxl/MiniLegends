# ============================================
# GAUNTLET PHASE - Track when pre-bosses die
# ============================================

# Count remaining gauntlet enemies
execute store result score #gauntlet_remaining ml.random if entity @e[tag=terror_gauntlet]

# Update boss bar
execute store result bossbar minilegends:legendt_gauntlet value run scoreboard players get #gauntlet_remaining ml.random

# Check if Apollon dead
execute unless entity @e[tag=terror_apollon] if score #terror_kills ml.random matches 0 run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Apollon defeated!","color":"green"}]
execute unless entity @e[tag=terror_apollon] if score #terror_kills ml.random matches 0 run scoreboard players set #terror_kills ml.random 1

# Check if Frigis dead
execute unless entity @e[tag=terror_frigis] if score #terror_kills ml.random matches 1 run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Frigis defeated!","color":"green"}]
execute unless entity @e[tag=terror_frigis] if score #terror_kills ml.random matches 1 run scoreboard players set #terror_kills ml.random 2

# Check if STR dead
execute unless entity @e[tag=terror_str] if score #terror_kills ml.random matches 2 run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"STR defeated!","color":"green"}]
execute unless entity @e[tag=terror_str] if score #terror_kills ml.random matches 2 run scoreboard players set #terror_kills ml.random 3

# All dead - spawn Darkwarro
execute if score #terror_kills ml.random matches 3 unless entity @e[tag=terror_gauntlet] if score #terror_phase ml.random matches 0 run function minilegends:bosses/legendt_spawn
