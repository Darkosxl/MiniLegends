# ============================================
# TERROR ARENA - Creates 100x100 OPEN TOP arena
# No ceiling - players can fall to their death!
# 5 block thick walls/floor only
# ============================================

# Arena dimensions: 100x100 base, no ceiling
# Floor at Y=140-145, walls go up to Y=200

# Create the floor (5 blocks thick)
fill ~-50 140 ~-50 ~50 145 ~50 obsidian

# Create walls (5 blocks thick, up to Y=200)
# North wall
fill ~-50 145 ~-50 ~50 200 ~-45 obsidian
# South wall
fill ~-50 145 ~45 ~50 200 ~50 obsidian
# West wall
fill ~-50 145 ~-45 ~-45 200 ~45 obsidian
# East wall
fill ~45 145 ~-45 ~50 200 ~45 obsidian

# Hollow out interior floor area
fill ~-45 146 ~-45 ~45 200 ~45 air

# Add glowstone lighting in corners
setblock ~-44 146 ~-44 glowstone
setblock ~44 146 ~-44 glowstone
setblock ~-44 146 ~44 glowstone
setblock ~44 146 ~44 glowstone
setblock ~0 146 ~0 glowstone

# Sculk decoration (terror theme)
fill ~-15 145 ~-15 ~15 145 ~15 sculk
setblock ~0 145 ~0 sculk_catalyst

# Center marker
setblock ~ 145 ~ crying_obsidian

# Add sculk shriekers for ambiance
setblock ~-20 146 ~-20 sculk_shrieker
setblock ~20 146 ~-20 sculk_shrieker
setblock ~-20 146 ~20 sculk_shrieker
setblock ~20 146 ~20 sculk_shrieker
