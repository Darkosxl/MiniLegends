# ============================================
# LEVEL 3 ACTIVATION - ZA WARUDO unlocked
# Poison arrows fly toward random players
# ============================================

scoreboard players set #kira_level ml.random 3

tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Level 3 - ZA WARUDO!","color":"dark_purple","bold":true}]

playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.5
particle minecraft:witch ~ ~1 ~ 2 2 2 0.1 100

# Initial arrow barrage
function minilegends:tick/legendk_arrows
