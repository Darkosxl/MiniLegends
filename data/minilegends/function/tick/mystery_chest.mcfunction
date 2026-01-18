# ============================================
# MYSTERY CHEST TICK - Detects when chest is opened
# Checks for player near marker + chest being opened (trapped chest signal)
# ============================================

# TERROR chest - spawns Darkwarro fight
execute as @e[tag=mystery_chest_marker,tag=terror_chest] at @s if entity @a[distance=..5] if block ~ ~ ~ trapped_chest run function minilegends:structure_spawns/chest/opened_terror

# Kira chest - spawns Kira specifically
execute as @e[tag=mystery_chest_marker,tag=kira_chest] at @s if entity @a[distance=..5] if block ~ ~ ~ trapped_chest run function minilegends:structure_spawns/chest/opened_kira

# Normal chest - spawns random boss (excluding Kira and Darkwarro)
execute as @e[tag=mystery_chest_marker,tag=!kira_chest,tag=!terror_chest] at @s if entity @a[distance=..5] if block ~ ~ ~ trapped_chest run function minilegends:structure_spawns/chest/opened
