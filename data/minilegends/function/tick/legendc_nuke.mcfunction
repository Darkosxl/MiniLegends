# ============================================
# LEGEND C NUKE - Massive explosion + lava
# ============================================

# Warning
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"NUCLEAR DETONATION!","color":"red","bold":true}]
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5

# Spawn 50 TNT in a sphere pattern (instant fuse)
summon tnt ~ ~ ~ {fuse:0}
summon tnt ~2 ~ ~ {fuse:1}
summon tnt ~-2 ~ ~ {fuse:1}
summon tnt ~ ~ ~2 {fuse:1}
summon tnt ~ ~ ~-2 {fuse:1}
summon tnt ~1 ~1 ~ {fuse:1}
summon tnt ~-1 ~1 ~ {fuse:1}
summon tnt ~ ~1 ~1 {fuse:1}
summon tnt ~ ~1 ~-1 {fuse:1}
summon tnt ~3 ~ ~ {fuse:2}
summon tnt ~-3 ~ ~ {fuse:2}
summon tnt ~ ~ ~3 {fuse:2}
summon tnt ~ ~ ~-3 {fuse:2}
summon tnt ~2 ~1 ~ {fuse:2}
summon tnt ~-2 ~1 ~ {fuse:2}
summon tnt ~ ~1 ~2 {fuse:2}
summon tnt ~ ~1 ~-2 {fuse:2}
summon tnt ~1 ~2 ~ {fuse:2}
summon tnt ~-1 ~2 ~ {fuse:2}
summon tnt ~ ~2 ~1 {fuse:2}
summon tnt ~ ~2 ~-1 {fuse:2}
summon tnt ~4 ~ ~ {fuse:3}
summon tnt ~-4 ~ ~ {fuse:3}
summon tnt ~ ~ ~4 {fuse:3}
summon tnt ~ ~ ~-4 {fuse:3}
summon tnt ~3 ~1 ~ {fuse:3}
summon tnt ~-3 ~1 ~ {fuse:3}
summon tnt ~ ~1 ~3 {fuse:3}
summon tnt ~ ~1 ~-3 {fuse:3}
summon tnt ~2 ~2 ~ {fuse:3}
summon tnt ~-2 ~2 ~ {fuse:3}
summon tnt ~ ~2 ~2 {fuse:3}
summon tnt ~ ~2 ~-2 {fuse:3}
summon tnt ~1 ~3 ~ {fuse:3}
summon tnt ~-1 ~3 ~ {fuse:3}
summon tnt ~ ~3 ~1 {fuse:3}
summon tnt ~ ~3 ~-1 {fuse:3}
summon tnt ~5 ~ ~ {fuse:4}
summon tnt ~-5 ~ ~ {fuse:4}
summon tnt ~ ~ ~5 {fuse:4}
summon tnt ~ ~ ~-5 {fuse:4}
summon tnt ~2 ~2 ~2 {fuse:4}
summon tnt ~-2 ~2 ~2 {fuse:4}
summon tnt ~2 ~2 ~-2 {fuse:4}
summon tnt ~-2 ~2 ~-2 {fuse:4}
summon tnt ~ ~4 ~ {fuse:4}
summon tnt ~1 ~4 ~ {fuse:4}
summon tnt ~-1 ~4 ~ {fuse:4}
summon tnt ~ ~4 ~1 {fuse:4}
summon tnt ~ ~4 ~-1 {fuse:4}

# Create lava lake at ground level (delayed to let explosion happen first)
schedule function minilegends:tick/legendc_lava 60t
