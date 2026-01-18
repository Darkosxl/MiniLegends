# ============================================
# KIRA ARENA - Creates 50x50 obsidian cube arena in the sky
# 5 block thick walls/floor/ceiling
# Hollow interior with lots of space
# ============================================

# Arena dimensions: 50x50x40 exterior, interior 40x40x30
# Placed at Y=150 to Y=190

# First create solid obsidian cube
fill ~-25 150 ~-25 ~25 190 ~25 obsidian

# Then hollow out the interior (leave 5 block thick walls)
fill ~-20 155 ~-20 ~20 185 ~20 air

# Add glowstone lighting in corners of interior
setblock ~-19 156 ~-19 glowstone
setblock ~19 156 ~-19 glowstone
setblock ~-19 156 ~19 glowstone
setblock ~19 156 ~19 glowstone
setblock ~-19 175 ~-19 glowstone
setblock ~19 175 ~-19 glowstone
setblock ~-19 175 ~19 glowstone
setblock ~19 175 ~19 glowstone

# Center platform marker
setblock ~ 155 ~ gold_block
