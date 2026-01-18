# ============================================
# PHASE 2 START - Transition complete, rage begins
# ============================================

# Remove transitioning, add phase 2
tag @s remove legende_transitioning
tag @s add legende_phase2

# Reset timer
scoreboard players set @s ml.timer 0

# Clear slowness from transition
effect clear @s slowness

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"STR","color":"blue"},{"text":"] ","color":"gray"},{"text":"44 49 45!","color":"dark_red","bold":true}]

# Lightning strike on self for dramatic effect
execute at @s run summon lightning_bolt ~ ~ ~

# Sound
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.6
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 10
