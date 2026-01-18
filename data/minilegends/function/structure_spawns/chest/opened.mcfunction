# ============================================
# CHEST OPENED - Player opened the mystery chest!
# Remove the chest and spawn a random boss
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"You have unleashed something...","color":"dark_red","bold":true}]

# Effects
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.5
particle minecraft:smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50

# Remove the chest
setblock ~ ~ ~ air

# Store player position for boss spawn, then spawn random boss
execute as @p[distance=..10] at @s run function minilegends:structure_spawns/chest/random_boss

# Kill this marker
kill @s
