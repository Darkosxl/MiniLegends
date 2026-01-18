# ============================================
# TERROR X EXPLOSION - 10 TNT worth of destruction
# Called by Terror X enchantment on arrow hit
# ============================================

# Massive explosion - spawn 10 TNT with instant fuse
summon tnt ~ ~ ~ {fuse:0}
summon tnt ~0.5 ~ ~ {fuse:0}
summon tnt ~-0.5 ~ ~ {fuse:0}
summon tnt ~ ~ ~0.5 {fuse:0}
summon tnt ~ ~ ~-0.5 {fuse:0}
summon tnt ~ ~0.5 ~ {fuse:0}
summon tnt ~0.5 ~0.5 ~ {fuse:0}
summon tnt ~-0.5 ~0.5 ~ {fuse:0}
summon tnt ~ ~0.5 ~0.5 {fuse:0}
summon tnt ~ ~0.5 ~-0.5 {fuse:0}

# Sound and particles
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.6
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 3
