# ============================================
# LEGEND T TICK - Darkwarro boss logic
# Phase 0: Gauntlet (track kills)
# Phase 1: Darkwarro fight (explosion ability)
# ============================================

# === PHASE 0: GAUNTLET ===
execute if score #terror_phase ml.random matches 0 run function minilegends:tick/legendt_gauntlet

# === PHASE 1: DARKWARRO FIGHT ===
execute if score #terror_phase ml.random matches 1 run function minilegends:tick/legendt_fight
