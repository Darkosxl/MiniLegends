# ============================================
# SEISMIC ROAR - Pulls all players toward Darkwarro
# Teleports them to within 4 blocks of the boss
# ============================================

# Warning message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Darkwarro","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"text":"GET OVER HERE!","color":"dark_purple","bold":true}]

# Massive roar sound
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 2 0.4
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5

# Visual effect - particles converging on boss
particle minecraft:sculk_soul ~ ~1 ~ 15 5 15 0.1 100
particle minecraft:reverse_portal ~ ~1 ~ 5 2 5 0.5 50

# Pull all players to within 4 blocks of Darkwarro
# Spread them in a ring around him
execute as @a at @e[tag=legendt,limit=1] run spreadplayers ~ ~ 2 4 false @s

# Apply brief slowness so they can't immediately escape
effect give @a slowness 3 2 false

# Damage from the pull (5 hearts)
execute as @a run damage @s 10 minecraft:sonic_boom

# Darkwarro laughs
execute as @e[tag=legendt] at @s run playsound minecraft:entity.warden.listening_angry master @a ~ ~ ~ 2 0.7
