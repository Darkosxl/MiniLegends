# ============================================
# DARKWARRO EXPLODE - Periodic explosion from inside
# Damages players nearby, shakes the arena
# ============================================

# Warning
tellraw @a [{"text":"[","color":"gray"},{"text":"Darkwarro","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"FEEL MY WRATH!","color":"red","bold":true}]

# Sound warning
playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 2 0.8

# Explosion effect (ring of explosions around boss)
execute positioned ~5 ~ ~ run summon tnt ~ ~ ~ {fuse:10}
execute positioned ~-5 ~ ~ run summon tnt ~ ~ ~ {fuse:10}
execute positioned ~ ~ ~5 run summon tnt ~ ~ ~ {fuse:10}
execute positioned ~ ~ ~-5 run summon tnt ~ ~ ~ {fuse:10}
execute positioned ~4 ~ ~4 run summon tnt ~ ~ ~ {fuse:15}
execute positioned ~-4 ~ ~4 run summon tnt ~ ~ ~ {fuse:15}
execute positioned ~4 ~ ~-4 run summon tnt ~ ~ ~ {fuse:15}
execute positioned ~-4 ~ ~-4 run summon tnt ~ ~ ~ {fuse:15}

# Sonic boom visual
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1

# Knockback all nearby players
execute as @a[distance=..15] at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Effects:[{id:"minecraft:levitation",amplifier:5,duration:10}]}

# Damage nearby players
effect give @a[distance=..10] wither 3 1 true

# Sound
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 0.6
