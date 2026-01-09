# ============================================
# LEGEND S - Tick Logic
# Called from main tick.mcfunction
# ============================================

# === BOSS BAR UPDATES ===
execute if entity @e[tag=legendS1,limit=1] store result bossbar minilegends:legends1 value run data get entity @e[tag=legendS1,limit=1] Health
execute as @a at @s if entity @e[tag=legendS1,distance=..50] run bossbar set minilegends:legends1 players @s
execute if entity @e[tag=legendS2,limit=1] store result bossbar minilegends:legends2 value run data get entity @e[tag=legendS2,limit=1] Health
execute as @a at @s if entity @e[tag=legendS2,distance=..50] run bossbar set minilegends:legends2 players @s

# === EXPLOSIVE ARROWS (5 TNT on impact) ===
execute at @e[tag=legendS] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~ {fuse:0}
execute at @e[tag=legendS] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~1 ~ ~ {fuse:0}
execute at @e[tag=legendS] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~-1 ~ ~ {fuse:0}
execute at @e[tag=legendS] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~1 {fuse:0}
execute at @e[tag=legendS] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~-1 {fuse:0}
execute at @e[tag=legendS] run kill @e[type=arrow,nbt={inGround:1b},distance=..100]

# === LAVA RING (3 blocks deep) ===
execute at @e[tag=legendS] run fill ~-3 ~-3 ~ ~-3 ~ ~ lava replace air
execute at @e[tag=legendS] run fill ~3 ~-3 ~ ~3 ~ ~ lava replace air
execute at @e[tag=legendS] run fill ~ ~-3 ~-3 ~ ~ ~-3 lava replace air
execute at @e[tag=legendS] run fill ~ ~-3 ~3 ~ ~ ~3 lava replace air
execute at @e[tag=legendS] run fill ~-2 ~-3 ~-2 ~-2 ~ ~-2 lava replace air
execute at @e[tag=legendS] run fill ~2 ~-3 ~-2 ~2 ~ ~-2 lava replace air
execute at @e[tag=legendS] run fill ~-2 ~-3 ~2 ~-2 ~ ~2 lava replace air
execute at @e[tag=legendS] run fill ~2 ~-3 ~2 ~2 ~ ~2 lava replace air

# === DEATH DETECTION ===
execute unless entity @e[tag=legendS1] if bossbar minilegends:legends1 exists run bossbar remove minilegends:legends1
execute unless entity @e[tag=legendS2] if bossbar minilegends:legends2 exists run bossbar remove minilegends:legends2
execute unless entity @e[tag=legendS] if score #legendS_was_alive ml.timer matches 1 run title @a title {"text":"Legend S Defeated!","color":"green"}
execute if entity @e[tag=legendS] run scoreboard players set #legendS_was_alive ml.timer 1
execute unless entity @e[tag=legendS] run scoreboard players set #legendS_was_alive ml.timer 0
