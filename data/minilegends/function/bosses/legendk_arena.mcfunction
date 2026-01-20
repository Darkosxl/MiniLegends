# ============================================
# KIRA ARENA - Creates 50x50 obsidian cube arena
# ============================================

# Arena dimensions: 50x50x40 exterior
# Split into layers to avoid fill limit (32k blocks)

# Layer 1: Floor and lower walls (Y 150-160)
fill ~-25 150 ~-25 ~25 160 ~25 obsidian
fill ~-20 155 ~-20 ~20 160 ~20 air

# Layer 2: Mid walls (Y 161-170)
fill ~-25 161 ~-25 ~25 170 ~25 obsidian
fill ~-20 161 ~-20 ~20 170 ~20 air

# Layer 3: High walls (Y 171-180)
fill ~-25 171 ~-25 ~25 180 ~25 obsidian
fill ~-20 171 ~-20 ~20 180 ~20 air

# Layer 4: Ceiling (Y 181-190)
fill ~-25 181 ~-25 ~25 190 ~25 obsidian
fill ~-20 181 ~-20 ~20 185 ~20 air

# Lighting
setblock ~-19 156 ~-19 glowstone
setblock ~19 156 ~-19 glowstone
setblock ~-19 156 ~19 glowstone
setblock ~19 156 ~19 glowstone
setblock ~-19 175 ~-19 glowstone
setblock ~19 175 ~-19 glowstone
setblock ~-19 175 ~19 glowstone
setblock ~19 175 ~19 glowstone

# Center marker
setblock ~ 155 ~ gold_block