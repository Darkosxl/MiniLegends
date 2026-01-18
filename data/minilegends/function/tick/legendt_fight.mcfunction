# ============================================
# DARKWARRO FIGHT - Main boss phase
# Periodic explosion ability
# ============================================

# === BOSS BAR UPDATE ===
execute store result bossbar minilegends:legendt value run data get entity @e[tag=legendt,limit=1] Health
bossbar set minilegends:legendt players @a

# === DEATH CHECK ===
execute unless entity @e[tag=legendt] if score #terror_phase ml.random matches 1 run function minilegends:tick/legendt_death

# === TIMER INCREMENT ===
execute as @e[tag=legendt] run scoreboard players add @s ml.timer 1

# === PERIODIC EXPLOSION (every 6 seconds = 120 ticks) ===
execute as @e[tag=legendt] at @s if score @s ml.timer matches 120 run function minilegends:tick/legendt_explode
execute as @e[tag=legendt] if score @s ml.timer matches 120 run scoreboard players set @s ml.timer 0

# === DARKNESS AURA (every 3 seconds) ===
execute as @e[tag=legendt] at @s if score @s ml.timer matches 60 run effect give @a[distance=..30] darkness 5 0 true

# === HEARTBEAT SOUND (every 2 seconds) ===
execute as @e[tag=legendt] at @s if score @s ml.timer matches 40 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2 1
execute as @e[tag=legendt] at @s if score @s ml.timer matches 80 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2 0.8
