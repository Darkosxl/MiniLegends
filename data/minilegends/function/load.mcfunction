# ============================================
# LOAD - Runs once when datapack loads
# ============================================

# Timer scoreboard - counts ticks for periodic structure checks
scoreboard objectives add ml.timer dummy

# Random scoreboard - for chest and boss randomization
scoreboard objectives add ml.random dummy

# Optional: load message
tellraw @a [{"text":"[MiniLegends]","color":"gold"},{"text":" Loaded!","color":"green"}]