# ============================================
# LEGEND E TICK - Sand Coffin ability + boss bar
# Spawns a 3-thick sand wall behind the player to trap them
# ============================================

# === BOSS BAR UPDATE ===
execute store result bossbar minilegends:legende value run data get entity @e[tag=legende,limit=1] Health
bossbar set minilegends:legende players @a[distance=..100]

# === DEATH CHECK ===
execute unless entity @e[tag=legende] run bossbar remove minilegends:legende
execute unless entity @e[tag=legende] run scoreboard players reset #legende_dead ml.timer

# === SAND COFFIN ABILITY (every 8 seconds = 160 ticks) ===
# Increment timer for each legende
execute as @e[tag=legende] run scoreboard players add @s ml.timer 1

# When timer hits 160, execute sand coffin
execute as @e[tag=legende,scores={ml.timer=160..}] at @s if entity @p[distance=..25] run function minilegends:tick/legende_coffin
execute as @e[tag=legende,scores={ml.timer=160..}] run scoreboard players set @s ml.timer 0
