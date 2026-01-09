# ============================================
# LEGEND Z (reiN) - Tick Logic
# Called from main tick.mcfunction
# ============================================

# === BOSS BAR UPDATE ===
execute if entity @e[tag=rein,limit=1] store result bossbar minilegends:rein value run data get entity @e[tag=rein,limit=1] Health
execute as @a at @s if entity @e[tag=rein,distance=..50] run bossbar set minilegends:rein players @s

# === PROJECTILE IMMUNITY ===
execute at @e[tag=rein] run kill @e[type=arrow,distance=..1.5]
execute at @e[tag=rein] run kill @e[type=spectral_arrow,distance=..1.5]
execute at @e[tag=rein] run kill @e[type=trident,distance=..1.5]

# === DEATH DETECTION ===
execute unless entity @e[tag=rein] if bossbar minilegends:rein exists run bossbar remove minilegends:rein
execute unless entity @e[tag=rein] if entity @e[tag=rein_minion] run title @a title {"text":"reiN Defeated!","color":"green"}
execute unless entity @e[tag=rein] run kill @e[tag=rein_minion]
