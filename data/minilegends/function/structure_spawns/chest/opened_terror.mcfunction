# ============================================
# TERROR CHEST OPENED - Darkwarro fight begins
# Teleports players to the TERROR arena
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"TERROR INITIATED... Prepare for the ultimate challenge!","color":"dark_red","bold":true}]

# Dramatic effects
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.6
particle minecraft:sculk_soul ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50

# Remove the chest
setblock ~ ~ ~ air

# Spawn Darkwarro fight (teleports all players to arena)
function minilegends:bosses/legendt

# Kill this marker
kill @s
