# ============================================
# KIRA CLEANUP - Delayed arena destruction
# Called 30 seconds after Kira death
# ============================================

# Final warning
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Arena destroyed. Returning to spawn...","color":"gray"}]

# Teleport all players back to world spawn
execute as @a run tp @s 0 100 0

# Destroy the arena (fill with air)
fill 49975 139 49975 50025 191 50025 air

# Sound
playsound minecraft:block.end_portal.spawn master @a 0 100 0 1 0.5
