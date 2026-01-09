# ============================================
# LEGEND C LAVA - Create lava lake after explosion
# ============================================

# Find nearest player and create lava lake around them
execute as @a[limit=1,sort=nearest] at @s run fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 lava replace air
execute as @a[limit=1,sort=nearest] at @s run fill ~-3 ~-3 ~-3 ~3 ~-2 ~3 lava replace air
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Lava is rising from the crater!","color":"red"}]
