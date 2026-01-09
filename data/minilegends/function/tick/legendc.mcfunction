# ============================================
# LEGEND C - Tick Logic
# Nuclear explosion + lava lake on death
# ============================================

# === BOSS BAR UPDATE (total HP of all legendc) ===
execute store result score #legendc_hp ml.timer run data get entity @e[tag=legendc,limit=1,sort=nearest] Health
execute as @e[tag=legendc] run scoreboard players operation #legendc_hp ml.timer += #legendc_hp ml.timer
execute if entity @e[tag=legendc] run bossbar set minilegends:legendc value 500

# Simple bossbar - just show if any are alive
execute as @a at @s if entity @e[tag=legendc,distance=..50] run bossbar set minilegends:legendc players @s

# === TRACK LEGENDC COUNT ===
execute store result score #legendc_count ml.timer if entity @e[tag=legendc]
execute if score #legendc_prev ml.timer > #legendc_count ml.timer run function minilegends:tick/legendc_explode

# Store current count for next tick comparison
scoreboard players operation #legendc_prev ml.timer = #legendc_count ml.timer

# === DEATH DETECTION ===
execute unless entity @e[tag=legendc] if score #legendc_alive ml.timer matches 1 run bossbar remove minilegends:legendc
execute unless entity @e[tag=legendc] if score #legendc_alive ml.timer matches 1 run tellraw @a {"text":"Frigis has been defeated!","color":"green","bold":true}

# === ALIVE TRACKING ===
execute if entity @e[tag=legendc] run scoreboard players set #legendc_alive ml.timer 1
execute unless entity @e[tag=legendc] run scoreboard players set #legendc_alive ml.timer 0
