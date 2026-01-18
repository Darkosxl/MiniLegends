# ============================================
# LEGEND E TICK - Sand Coffin ability + boss bar + Phase 2
# Spawns a 3-thick sand wall behind the player to trap them
# Phase 2 (<250 HP): Speed II, Wither touch, Lightning storm
# ============================================

# === BOSS BAR UPDATE ===
execute store result bossbar minilegends:legende value run data get entity @e[tag=legende,limit=1] Health
bossbar set minilegends:legende players @a[distance=..100]

# === DEATH CHECK ===
execute unless entity @e[tag=legende] run bossbar remove minilegends:legende
execute unless entity @e[tag=legende] run scoreboard players reset #legende_dead ml.timer

# === TIMER INCREMENT ===
execute as @e[tag=legende] run scoreboard players add @s ml.timer 1

# === PHASE TRANSITION (5 seconds of invincibility) ===
# Check if transitioning - count down and stay frozen
execute as @e[tag=legende,tag=legende_transitioning] at @s run effect give @s resistance 1 255 true
execute as @e[tag=legende,tag=legende_transitioning] at @s run effect give @s slowness 1 255 true
execute as @e[tag=legende,tag=legende_transitioning,scores={ml.timer=100..}] run function minilegends:tick/legende_phase2_start

# === PHASE 2 CHECK (below 250 HP = 50%, triggers transition) ===
execute as @e[tag=legende,tag=!legende_phase2,tag=!legende_transitioning] store result score @s ml.random run data get entity @s Health
execute as @e[tag=legende,tag=!legende_phase2,tag=!legende_transitioning,scores={ml.random=..250}] run function minilegends:tick/legende_phase2_transition

# === SAND COFFIN ABILITY ===
# Only if not transitioning
# Phase 1: Coffin every 160 ticks (8 sec)
execute as @e[tag=legende,tag=!legende_phase2,tag=!legende_transitioning,scores={ml.timer=160..}] at @s if entity @p[distance=..25] run function minilegends:tick/legende_coffin
execute as @e[tag=legende,tag=!legende_phase2,tag=!legende_transitioning,scores={ml.timer=160..}] run scoreboard players set @s ml.timer 0

# Phase 2: Coffin every 100 ticks (5 sec) - more aggressive
execute as @e[tag=legende,tag=legende_phase2,scores={ml.timer=100..}] at @s if entity @p[distance=..25] run function minilegends:tick/legende_coffin
execute as @e[tag=legende,tag=legende_phase2,scores={ml.timer=100..}] run scoreboard players set @s ml.timer 0

# === PHASE 2 EFFECTS (continuous) ===
# Speed II (refresh every tick to keep it permanent)
execute as @e[tag=legende,tag=legende_phase2] run effect give @s speed 2 1 true

# Wither II on nearby players (melee range = wither touch)
execute as @e[tag=legende,tag=legende_phase2] at @s run effect give @a[distance=..4] wither 3 1 true

# Lightning storm (every 40 ticks = 2 seconds)
execute as @e[tag=legende,tag=legende_phase2] at @s if score @s ml.timer matches 40 run function minilegends:tick/legende_lightning
execute as @e[tag=legende,tag=legende_phase2] at @s if score @s ml.timer matches 80 run function minilegends:tick/legende_lightning
