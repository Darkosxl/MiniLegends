# ============================================
# LEGEND C - Tick Logic
# Nuclear explosion + aftershock on death
# ============================================

# === BOSS BAR UPDATE ===
execute as @a at @s if entity @e[tag=legendc,distance=..50] run bossbar set minilegends:legendc players @s

# === DETECT IGNITED FRIGIS (about to explode) ===
# When a Frigis starts its fuse, mark the location
execute as @e[tag=legendc,nbt={ignited:1b}] at @s unless entity @e[tag=legendc_explosion_marker,distance=..3] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["legendc_explosion_marker"]}
execute as @e[tag=legendc,nbt={ignited:1b}] at @s unless entity @e[tag=legendc_explosion_marker,distance=..3] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"NUCLEAR DETONATION IMMINENT!","color":"red","bold":true}]

# === DETECT FRIGIS DEATH (explosion happened) ===
execute store result score #legendc_count ml.timer if entity @e[tag=legendc]
execute if score #legendc_prev ml.timer > #legendc_count ml.timer if entity @e[tag=legendc_explosion_marker] run function minilegends:tick/legendc_nuke_at_marker

# Store current count for next tick comparison
scoreboard players operation #legendc_prev ml.timer = #legendc_count ml.timer

# === DEATH DETECTION (all Frigis dead) ===
execute unless entity @e[tag=legendc] if score #legendc_alive ml.timer matches 1 run bossbar remove minilegends:legendc
execute unless entity @e[tag=legendc] if score #legendc_alive ml.timer matches 1 run tellraw @a {"text":"Frigis has been defeated!","color":"green","bold":true}

# === ALIVE TRACKING ===
execute if entity @e[tag=legendc] run scoreboard players set #legendc_alive ml.timer 1
execute unless entity @e[tag=legendc] run scoreboard players set #legendc_alive ml.timer 0
