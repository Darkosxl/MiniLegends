# ============================================
# TERROR ARENA - Creates 80x80 obsidian cube arena
# Bigger than Kira's arena
# 5 block thick walls/floor/ceiling
# ============================================

# Arena dimensions: 80x80x50 exterior, interior 70x70x40
# Placed at Y=140 to Y=190

# First create solid obsidian cube
fill ~-40 140 ~-40 ~40 190 ~40 obsidian

# Then hollow out the interior (leave 5 block thick walls)
fill ~-35 145 ~-35 ~35 185 ~35 air

# Add glowstone lighting in corners and center
setblock ~-34 146 ~-34 glowstone
setblock ~34 146 ~-34 glowstone
setblock ~-34 146 ~34 glowstone
setblock ~34 146 ~34 glowstone
setblock ~0 146 ~0 glowstone
setblock ~-34 175 ~-34 glowstone
setblock ~34 175 ~-34 glowstone
setblock ~-34 175 ~34 glowstone
setblock ~34 175 ~34 glowstone

# Sculk decoration (terror theme)
fill ~-10 145 ~-10 ~10 145 ~10 sculk
setblock ~0 145 ~0 sculk_catalyst

# Center marker
setblock ~ 145 ~ crying_obsidian
