# ============================================
# MYSTERY CHEST TICK - Detects when chest is opened
# Checks for player near marker + chest being opened (trapped chest signal)
# ============================================

# For each mystery chest marker, check if a player is nearby and the chest is open
execute as @e[tag=mystery_chest_marker] at @s if entity @a[distance=..5] if block ~ ~ ~ trapped_chest run function minilegends:structure_spawns/chest/opened
