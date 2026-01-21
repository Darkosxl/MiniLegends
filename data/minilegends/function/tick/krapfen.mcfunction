# ============================================
# LEGEND KRAPFEN TICK - The Punk logic
# HP: 300
# Summon Swarm at 80%(240), 60%(180), 40%(120), 20%(60)
# ============================================

# === BOSS BAR UPDATE ===
execute store result bossbar minilegends:krapfen value run data get entity @e[tag=legend_krapfen,limit=1] Health
bossbar set minilegends:krapfen players @a

# === DEATH CHECK ===
execute unless entity @e[tag=legend_krapfen] if score #krapfen_phase ml.random matches 0.. run function minilegends:tick/krapfen_death
execute unless entity @e[tag=legend_krapfen] run bossbar remove minilegends:krapfen
execute unless entity @e[tag=legend_krapfen] run scoreboard players set #krapfen_phase ml.random -1

# === TIMER INCREMENT ===
execute as @e[tag=legend_krapfen] run scoreboard players add @s ml.timer 1

# === HP THRESHOLD CHECKS ===
# Store current HP
execute as @e[tag=legend_krapfen] store result score @s ml.random run data get entity @s Health

# Threshold 1: 80% (240 HP)
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..240 if score #krapfen_phase ml.random matches 0 run function minilegends:tick/krapfen_swarm
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..240 if score #krapfen_phase ml.random matches 0 run scoreboard players set #krapfen_phase ml.random 1

# Threshold 2: 60% (180 HP)
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..180 if score #krapfen_phase ml.random matches 1 run function minilegends:tick/krapfen_swarm
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..180 if score #krapfen_phase ml.random matches 1 run scoreboard players set #krapfen_phase ml.random 2

# Threshold 3: 40% (120 HP)
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..120 if score #krapfen_phase ml.random matches 2 run function minilegends:tick/krapfen_swarm
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..120 if score #krapfen_phase ml.random matches 2 run scoreboard players set #krapfen_phase ml.random 3

# Threshold 4: 20% (60 HP)
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..60 if score #krapfen_phase ml.random matches 3 run function minilegends:tick/krapfen_swarm
execute as @e[tag=legend_krapfen] if score @s ml.random matches ..60 if score #krapfen_phase ml.random matches 3 run scoreboard players set #krapfen_phase ml.random 4
