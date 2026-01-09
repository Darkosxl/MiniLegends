# ============================================
# LEGEND C TRY SPAWN - Random chance spawn
# ============================================

# Random 1% chance (use random score)
scoreboard players set #legendc_random ml.timer 0
execute store result score #legendc_random ml.timer run random value 1..100
execute if score #legendc_random ml.timer matches 1 run function minilegends:structure_spawns/legendc/spawn
