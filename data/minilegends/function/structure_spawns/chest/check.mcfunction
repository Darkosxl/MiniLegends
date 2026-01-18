# ============================================
# CHECK CHEST SPAWN - Run periodically near structures
# Low chance to spawn a mystery chest
# ============================================

# 30% chance to spawn a chest (random 1-10, spawn on 1-3)
execute store result score #chest_roll ml.random run random value 1..10
execute if score #chest_roll ml.random matches 1..3 unless entity @e[tag=mystery_chest_marker,distance=..50] run function minilegends:structure_spawns/chest/spawn
