# ============================================
# LEGEND C AFTERSHOCK - Fizzling TNT after main blast
# ============================================

# Find nearest player and spawn fizzling TNT around them
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~3 ~ ~2 {fuse:20}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~-4 ~ ~1 {fuse:35}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~2 ~ ~-3 {fuse:50}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~-1 ~ ~4 {fuse:25}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~5 ~ ~ {fuse:40}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~-3 ~ ~-2 {fuse:55}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~ ~ ~5 {fuse:30}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~4 ~ ~-4 {fuse:45}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~-5 ~ ~3 {fuse:60}
execute as @a[limit=1,sort=nearest] at @s run summon tnt ~1 ~ ~-5 {fuse:15}

tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Aftershocks incoming...","color":"yellow","italic":true}]
