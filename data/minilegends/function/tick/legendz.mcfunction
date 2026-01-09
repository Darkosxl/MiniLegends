# ============================================
# LEGEND Z (reiN) - Tick Logic
# ============================================

# === BOSS BAR UPDATE ===
execute if entity @e[tag=rein,limit=1] store result bossbar minilegends:rein value run data get entity @e[tag=rein,limit=1] Health

# === PROJECTILE IMMUNITY ===
execute at @e[tag=rein] run kill @e[type=arrow,distance=..1.5]
execute at @e[tag=rein] run kill @e[type=spectral_arrow,distance=..1.5]
execute at @e[tag=rein] run kill @e[type=trident,distance=..1.5]

# === BOSSBAR VISIBILITY ===
execute as @a at @s if entity @e[tag=rein,distance=..50] run bossbar set minilegends:rein players @s

# === DEATH DETECTION ===
# Remove bossbar when boss dies (use score tracking instead of bossbar exists)
execute unless entity @e[tag=rein] if score #rein_bossbar ml.timer matches 1 run bossbar remove minilegends:rein
execute unless entity @e[tag=rein] if score #rein_bossbar ml.timer matches 1 run tellraw @a {"text":"reiN has been defeated!","color":"green","bold":true}
execute unless entity @e[tag=rein] run kill @e[tag=rein_minion]

# === BOSSBAR EXISTS TRACKING ===
execute if entity @e[tag=rein] run scoreboard players set #rein_bossbar ml.timer 1
execute unless entity @e[tag=rein] run scoreboard players set #rein_bossbar ml.timer 0

# === XP DROP (40 levels = ~2920 XP) on death ===
execute if entity @e[tag=rein] run scoreboard players set #rein_alive ml.timer 1
execute unless entity @e[tag=rein] if score #rein_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:1000}
execute unless entity @e[tag=rein] if score #rein_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:1000}
execute unless entity @e[tag=rein] if score #rein_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:920}
execute unless entity @e[tag=rein] run scoreboard players set #rein_alive ml.timer 0
