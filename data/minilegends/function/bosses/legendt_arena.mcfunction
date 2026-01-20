# ============================================
# TERROR ARENA - Creates 100x100 OPEN TOP arena
# ============================================

# Arena dimensions: 100x100 base
# Split into quadrants/layers to avoid fill limit (32k blocks)

# === FLOOR (Y 140-145) ===
# Split into 4 quadrants
fill ~-50 140 ~-50 ~0 145 ~0 obsidian
fill ~1 140 ~-50 ~50 145 ~0 obsidian
fill ~-50 140 ~1 ~0 145 ~50 obsidian
fill ~1 140 ~1 ~50 145 ~50 obsidian

# === WALLS (Y 145-200) ===
# Split by height (Lower: 145-175, Upper: 176-200)

# North Wall
fill ~-50 145 ~-50 ~50 175 ~-45 obsidian
fill ~-50 176 ~-50 ~50 200 ~-45 obsidian

# South Wall
fill ~-50 145 ~45 ~50 175 ~50 obsidian
fill ~-50 176 ~45 ~50 200 ~50 obsidian

# West Wall
fill ~-50 145 ~-45 ~-45 175 ~45 obsidian
fill ~-50 176 ~-45 ~-45 200 ~45 obsidian

# East Wall
fill ~45 145 ~-45 ~50 175 ~45 obsidian
fill ~45 176 ~-45 ~50 200 ~45 obsidian

# === INTERIOR AIR (Clear terrain) ===
# Split into layers
fill ~-44 146 ~-44 ~44 160 ~44 air
fill ~-44 161 ~-44 ~44 180 ~44 air
fill ~-44 181 ~-44 ~44 200 ~44 air

# === DECORATION ===
# Lighting
setblock ~-44 146 ~-44 glowstone
setblock ~44 146 ~-44 glowstone
setblock ~-44 146 ~44 glowstone
setblock ~44 146 ~44 glowstone
setblock ~0 146 ~0 glowstone

# Sculk decoration
fill ~-15 145 ~-15 ~15 145 ~15 sculk
setblock ~0 145 ~0 sculk_catalyst

# Center marker
setblock ~ 145 ~ crying_obsidian

# Shriekers
setblock ~-20 146 ~-20 sculk_shrieker
setblock ~20 146 ~-20 sculk_shrieker
setblock ~-20 146 ~20 sculk_shrieker
setblock ~20 146 ~20 sculk_shrieker