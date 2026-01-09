# ============================================
# LEGEND C SPAWN CHECK - Desert at night
# 1% chance per 5-second check
# ============================================

# Only spawn at night (time 13000-23000)
execute if predicate minecraft:is_night run function minilegends:structure_spawns/legendc/try_spawn
