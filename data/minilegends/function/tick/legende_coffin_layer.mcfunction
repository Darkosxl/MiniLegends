# ============================================
# SAND COFFIN LAYER - Places one layer of the sand wall
# 5 wide, 4 tall
# ============================================

# Bottom row (y+0)
setblock ^-2 ^ ^ sand
setblock ^-1 ^ ^ sand
setblock ^ ^ ^ sand
setblock ^1 ^ ^ sand
setblock ^2 ^ ^ sand

# Second row (y+1)
setblock ^-2 ^1 ^ sand
setblock ^-1 ^1 ^ sand
setblock ^ ^1 ^ sand
setblock ^1 ^1 ^ sand
setblock ^2 ^1 ^ sand

# Third row (y+2)
setblock ^-2 ^2 ^ sand
setblock ^-1 ^2 ^ sand
setblock ^ ^2 ^ sand
setblock ^1 ^2 ^ sand
setblock ^2 ^2 ^ sand

# Top row (y+3)
setblock ^-2 ^3 ^ sand
setblock ^-1 ^3 ^ sand
setblock ^ ^3 ^ sand
setblock ^1 ^3 ^ sand
setblock ^2 ^3 ^ sand
