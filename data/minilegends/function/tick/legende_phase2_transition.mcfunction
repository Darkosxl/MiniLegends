# ============================================
# PHASE 2 TRANSITION - Boss stops, becomes invincible, sets fire
# Lasts 5 seconds (100 ticks)
# ============================================

# Add transitioning tag
tag @s add legende_transitioning

# Reset timer for the 5 second countdown
scoreboard players set @s ml.timer 0

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"STR","color":"blue"},{"text":"] ","color":"gray"},{"text":"68 65 20 77 69 6C 6C 20 64 65 73 74 72 6F 79","color":"red","bold":true}]

# Sound effects
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5

# Set 6x6 fire around the boss
execute at @s run fill ~-3 ~ ~-3 ~3 ~ ~3 fire replace air
execute at @s run fill ~-3 ~1 ~-3 ~3 ~1 ~3 fire replace air

# Particles - menacing aura
particle minecraft:flame ~ ~1 ~ 1 1 1 0.1 100
particle minecraft:soul_fire_flame ~ ~2 ~ 0.5 0.5 0.5 0.05 50
