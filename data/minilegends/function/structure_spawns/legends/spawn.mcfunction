# ============================================
# SPAWN LEGEND S - Called when player enters outpost area
# Creates explosion to clear area, then spawns Legend S
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Arrows whistle through the air...","color":"green","italic":true}]

# Create explosion to clear spawn area
execute at @s positioned ~15 ~ ~ run summon tnt ~ ~ ~ {fuse:1}
execute at @s positioned ~15 ~ ~ run summon tnt ~ ~1 ~ {fuse:1}
execute at @s positioned ~15 ~ ~ run summon tnt ~ ~ ~1 {fuse:1}

# Schedule Legend S spawn for 1 second later (after explosion settles)
schedule function minilegends:structure_spawns/legends/spawn_delayed 20t
