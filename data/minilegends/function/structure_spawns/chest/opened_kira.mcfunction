# ============================================
# KIRA CHEST OPENED - Special RAID XXI chest
# Teleports players to Kira's arena
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"RAID XXI INITIATED...","color":"dark_red","bold":true}]

# Dramatic effects
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.8
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50

# Remove the chest
setblock ~ ~ ~ air

# Spawn Kira (teleports all players to arena)
function minilegends:bosses/legendk

# Kill this marker
kill @s
