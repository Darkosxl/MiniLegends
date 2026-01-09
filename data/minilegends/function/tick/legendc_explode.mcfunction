# ============================================
# LEGEND C EXPLODE - Called when a Legend C dies
# Nuclear explosion (50 TNT) + lava lake
# ============================================

# Find the nearest player (explosion likely happened near them)
execute as @a[limit=1,sort=nearest] at @s run function minilegends:tick/legendc_nuke
