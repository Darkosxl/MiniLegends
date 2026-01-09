# ============================================
# LOAD - Runs once when datapack loads
# ============================================

# Timer scoreboard - counts ticks for periodic structure checks
scoreboard objectives add ml.timer dummy

# Optional: load message
tellraw @a [{"text":"[MiniLegends]","color":"gold"},{"text":" Loaded!","color":"green"}]