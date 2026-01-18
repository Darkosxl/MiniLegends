# ============================================
# LEVEL 1 ACTIVATION - Fire Gates unlocked
# ============================================

scoreboard players set #kira_level ml.random 1

tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Level 1 - FIRE GATES!","color":"gold","bold":true}]

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.8
particle minecraft:flame ~ ~1 ~ 2 2 2 0.1 100

# Initial fire burst
function minilegends:tick/legendk_fire
