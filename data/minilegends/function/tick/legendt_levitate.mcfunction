# ============================================
# VOID ASCENSION - Launches players into the sky
# Levitation V for 10 seconds - they will fall to their death!
# Open top arena means no ceiling to stop them
# ============================================

# Warning message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Darkwarro","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"text":"ASCEND!","color":"red","bold":true}]

# Warden roar sound
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 2 0.6
playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 2 1.5

# Visual effect - sculk particles rising
particle minecraft:sculk_charge_pop ~ ~ ~ 10 5 10 0.5 200

# Apply Levitation V to all players in arena (10 seconds = 200 ticks)
# Levitation V launches them very high very fast
effect give @a[distance=..60] levitation 10 4 false

# Additional particles on each player
execute as @a[distance=..60] at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1

