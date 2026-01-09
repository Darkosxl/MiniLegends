# ============================================
# SPAWN REIN - Called when player enters mansion
# Creates explosion to clear area, then spawns reiN
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"The ground trembles...","color":"red","italic":true}]

# Create explosion 20 blocks away (clears the spawn area)
execute at @s positioned ~20 ~ ~ run summon tnt ~ ~ ~ {fuse:1}
execute at @s positioned ~20 ~ ~ run summon tnt ~ ~1 ~ {fuse:1}
execute at @s positioned ~20 ~ ~ run summon tnt ~ ~ ~1 {fuse:1}

# Schedule reiN spawn for 1 second later (after explosion settles)
schedule function minilegends:structure_spawns/legendz/spawn_delayed 20t