# ============================================
# SAND COFFIN - Spawns wall of sand behind player
# Wall is 1.5x distance from enderman (past the player)
# 3 blocks thick, 5 blocks wide, 4 blocks tall
# ============================================

# Sound warning
playsound minecraft:block.sand.place master @a ~ ~ ~ 2 0.5
execute at @p[distance=..25] run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 1 1

# Execute facing the nearest player, place sand at ~1.5x distance
# Using local coordinates: ^ = left/right, ^ = up/down, ^ = forward

# Layer 1 (closest to player) - at distance toward player + a bit past
execute at @s facing entity @p[distance=..25] feet positioned ^ ^ ^8 run function minilegends:tick/legende_coffin_layer

# Layer 2 (middle)
execute at @s facing entity @p[distance=..25] feet positioned ^ ^ ^9 run function minilegends:tick/legende_coffin_layer

# Layer 3 (furthest - behind player)
execute at @s facing entity @p[distance=..25] feet positioned ^ ^ ^10 run function minilegends:tick/legende_coffin_layer

# Particle effect
execute at @p[distance=..25] run particle minecraft:dust{color:[0.9,0.8,0.5],scale:2.0} ~ ~1 ~ 2 2 2 0 50

# Taunt message
tellraw @a [{"text":"[","color":"gray"},{"text":"Asmon","color":"blue"},{"text":"] ","color":"gray"},{"text":"Sand Coffin!","color":"yellow","bold":true}]
