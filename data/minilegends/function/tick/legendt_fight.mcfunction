# ============================================
# DARKWARRO FIGHT - Main boss phase
# Abilities:
#   - Explosion every 6 seconds
#   - Void Ascension (levitation) every 40 seconds
#   - Seismic Roar (pull-in) every 60 seconds
#   - Darkness aura every 3 seconds
# ============================================

# === BOSS BAR UPDATE ===
execute store result bossbar minilegends:legendt value run data get entity @e[tag=legendt,limit=1] Health
bossbar set minilegends:legendt players @a

# === DEATH CHECK ===
execute unless entity @e[tag=legendt] if score #terror_phase ml.random matches 1 run function minilegends:tick/legendt_death

# === TIMER INCREMENTS ===
execute if entity @e[tag=legendt] run scoreboard players add #terror_timer ml.random 1
execute if entity @e[tag=legendt] run scoreboard players add #terror_levitate ml.random 1
execute if entity @e[tag=legendt] run scoreboard players add #terror_roar ml.random 1
execute if entity @e[tag=legendt] run scoreboard players add #terror_dark ml.random 1

# === PERIODIC EXPLOSION (every 6 seconds = 120 ticks) ===
execute as @e[tag=legendt] at @s if score #terror_timer ml.random matches 120.. run function minilegends:tick/legendt_explode
execute if score #terror_timer ml.random matches 120.. run scoreboard players set #terror_timer ml.random 0

# === VOID ASCENSION (every 40 seconds = 800 ticks, lasts 10 seconds) ===
execute as @e[tag=legendt] at @s if score #terror_levitate ml.random matches 800.. run function minilegends:tick/legendt_levitate
execute if score #terror_levitate ml.random matches 800.. run scoreboard players set #terror_levitate ml.random 0

# === SEISMIC ROAR (every 60 seconds = 1200 ticks) ===
execute as @e[tag=legendt] at @s if score #terror_roar ml.random matches 1200.. run function minilegends:tick/legendt_roar
execute if score #terror_roar ml.random matches 1200.. run scoreboard players set #terror_roar ml.random 0

# === RANDOM TNT RAIN (every 2 seconds = 40 ticks) ===
execute if score #terror_timer ml.random matches 40 run function minilegends:tick/legendt_tnt
execute if score #terror_timer ml.random matches 80 run function minilegends:tick/legendt_tnt

# === DARKNESS AURA (every 10 seconds = 200 ticks) ===
execute as @e[tag=legendt] at @s if score #terror_dark ml.random matches 200.. run effect give @a[distance=..50] darkness 2 0 true
execute if score #terror_dark ml.random matches 200.. run scoreboard players set #terror_dark ml.random 0

# === HEARTBEAT SOUND (every 2 seconds) ===
execute as @e[tag=legendt] at @s if score #terror_timer ml.random matches 40 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2 1
execute as @e[tag=legendt] at @s if score #terror_timer ml.random matches 80 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2 0.8
