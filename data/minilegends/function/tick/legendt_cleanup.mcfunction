# ============================================
# TERROR CLEANUP - Delayed arena destruction
# Called 60 seconds after Darkwarro death
# ============================================

# Final warning
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"TERROR arena destroyed. Returning to spawn...","color":"gray"}]

# Teleport all players back to world spawn
execute as @a run tp @s 0 100 0

# Destroy the arena (fill with air)
fill -50040 139 -50040 -49960 191 -49960 air

# Sound
playsound minecraft:block.end_portal.spawn master @a 0 100 0 1 0.5
