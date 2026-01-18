# ============================================
# RANDOM BOSS - Picks and spawns a random boss (1 of 4)
# Kira is excluded - he has his own special chest
# ============================================

# Roll 1-4 for random boss selection
execute store result score #boss_roll ml.random run random value 1..4

# Spawn the selected boss
execute if score #boss_roll ml.random matches 1 run function minilegends:bosses/legendc
execute if score #boss_roll ml.random matches 2 run function minilegends:bosses/legends
execute if score #boss_roll ml.random matches 3 run function minilegends:bosses/legendz
execute if score #boss_roll ml.random matches 4 run function minilegends:bosses/legende
