# ============================================
# FIRE GATES - Random 4x4 fire patches in arena
# Arena at x=50000 z=50000, interior Y=155
# ============================================

# Patch 1 - random position
fill 49985 155 49990 49988 155 49993 fire replace air

# Patch 2 - different position
fill 50005 155 50012 50008 155 50015 fire replace air

# Patch 3 - another position
fill 49992 155 49982 49995 155 49985 fire replace air

# Patch 4 - another position
fill 50014 155 49995 50017 155 49998 fire replace air

# Sound
playsound minecraft:item.firecharge.use master @a 50000 160 50000 1 1
