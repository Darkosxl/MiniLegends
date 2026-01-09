# ============================================
# LEGEND C NUKE - Massive wide explosion + aftershocks
# Runs at the exact location where Frigis exploded
# ============================================

# Warning
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"NUCLEAR SWARM!","color":"red","bold":true}]
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5

# Spawn 50 TNT in a WIDE horizontal pattern (instant to delayed fuses)
# Layer 0 (ground level) - center
summon tnt ~ ~ ~ {fuse:0}
# Layer 0 - ring 1 (radius 2)
summon tnt ~ ~ ~ {fuse:1}
summon tnt ~2 ~ ~ {fuse:1}
summon tnt ~-2 ~ ~ {fuse:1}
summon tnt ~ ~ ~2 {fuse:1}
summon tnt ~ ~ ~-2 {fuse:1}
summon tnt ~1 ~ ~1 {fuse:1}
summon tnt ~-1 ~ ~1 {fuse:1}
summon tnt ~1 ~ ~-1 {fuse:1}
summon tnt ~-1 ~ ~-1 {fuse:1}
# Layer 0 - ring 1 (radius 2)
summon tnt ~2 ~ ~ {fuse:1}
summon tnt ~-2 ~ ~ {fuse:1}
summon tnt ~ ~ ~2 {fuse:1}
summon tnt ~ ~ ~-2 {fuse:1}
summon tnt ~1 ~ ~1 {fuse:1}
summon tnt ~-1 ~ ~1 {fuse:1}
summon tnt ~1 ~ ~-1 {fuse:1}
summon tnt ~-1 ~ ~-1 {fuse:1}
# Layer 0 - ring 2 (radius 4)
summon tnt ~4 ~ ~ {fuse:2}
summon tnt ~-4 ~ ~ {fuse:2}
summon tnt ~ ~ ~4 {fuse:2}
summon tnt ~ ~ ~-4 {fuse:2}
summon tnt ~3 ~ ~3 {fuse:2}
summon tnt ~-3 ~ ~3 {fuse:2}
summon tnt ~3 ~ ~-3 {fuse:2}
summon tnt ~-3 ~ ~-3 {fuse:2}
# Layer 0 - ring 3 (radius 6)
summon tnt ~6 ~ ~ {fuse:3}
summon tnt ~-6 ~ ~ {fuse:3}
summon tnt ~ ~ ~6 {fuse:3}
summon tnt ~ ~ ~-6 {fuse:3}
summon tnt ~5 ~ ~3 {fuse:3}
summon tnt ~-5 ~ ~3 {fuse:3}
summon tnt ~5 ~ ~-3 {fuse:3}
summon tnt ~-5 ~ ~-3 {fuse:3}
summon tnt ~3 ~ ~5 {fuse:3}
summon tnt ~-3 ~ ~5 {fuse:3}
summon tnt ~3 ~ ~-5 {fuse:3}
summon tnt ~-3 ~ ~-5 {fuse:3}
# Layer 0 - ring 4 (radius 8)
summon tnt ~8 ~ ~ {fuse:4}
summon tnt ~-8 ~ ~ {fuse:4}
summon tnt ~ ~ ~8 {fuse:4}
summon tnt ~ ~ ~-8 {fuse:4}
summon tnt ~6 ~ ~6 {fuse:4}
summon tnt ~-6 ~ ~6 {fuse:4}
summon tnt ~6 ~ ~-6 {fuse:4}
summon tnt ~-6 ~ ~-6 {fuse:4}
# Layer -1 (underground) for crater
summon tnt ~ ~-1 ~ {fuse:2}
summon tnt ~2 ~-1 ~ {fuse:2}
summon tnt ~-2 ~-1 ~ {fuse:2}
summon tnt ~ ~-1 ~2 {fuse:2}
summon tnt ~ ~-1 ~-2 {fuse:2}
summon tnt ~4 ~-1 ~ {fuse:3}
summon tnt ~-4 ~-1 ~ {fuse:3}
summon tnt ~ ~-1 ~4 {fuse:3}
summon tnt ~ ~-1 ~-4 {fuse:3}
#layer -2
summon tnt ~ ~-1 ~ {fuse:4}
summon tnt ~2 ~-1 ~ {fuse:4}
summon tnt ~-2 ~-1 ~ {fuse:4}
summon tnt ~ ~-1 ~2 {fuse:4}
summon tnt ~ ~-1 ~-2 {fuse:4}
summon tnt ~4 ~-1 ~ {fuse:4}
summon tnt ~-4 ~-1 ~ {fuse:4}
summon tnt ~ ~-1 ~4 {fuse:4}
summon tnt ~ ~-1 ~-4 {fuse:4}
# Spawn fizzling aftershock TNT after 10 seconds (200 ticks)
schedule function minilegends:tick/legendc_aftershock 110t
