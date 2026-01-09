# ============================================
# LEGEND S - Tick Logic
# ============================================

# === BOSS BAR UPDATES ===
execute if entity @e[tag=legends1,limit=1] store result bossbar minilegends:legends1 value run data get entity @e[tag=legends1,limit=1] Health
execute as @a at @s if entity @e[tag=legends1,distance=..50] run bossbar set minilegends:legends1 players @s
execute if entity @e[tag=legends2,limit=1] store result bossbar minilegends:legends2 value run data get entity @e[tag=legends2,limit=1] Health
execute as @a at @s if entity @e[tag=legends2,distance=..50] run bossbar set minilegends:legends2 players @s

# === EXPLOSIVE ARROWS (5 TNT on impact) ===
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~ {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~1 ~ ~ {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~-1 ~ ~ {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~1 {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~-1 {fuse:0}
execute at @e[tag=legends] run kill @e[type=arrow,nbt={inGround:1b},distance=..100]

# === MOVING LAVA RING (follows Legend S) ===
# First: remove lava inside ring (so it moves with boss)
execute at @e[tag=legends] run fill ~-2 ~-3 ~-2 ~2 ~ ~2 air replace lava
# Then: place lava ring at radius 3 (outer edge)
execute at @e[tag=legends] run fill ~-3 ~-3 ~ ~-3 ~ ~ lava replace air
execute at @e[tag=legends] run fill ~3 ~-3 ~ ~3 ~ ~ lava replace air
execute at @e[tag=legends] run fill ~ ~-3 ~-3 ~ ~ ~-3 lava replace air
execute at @e[tag=legends] run fill ~ ~-3 ~3 ~ ~ ~3 lava replace air
execute at @e[tag=legends] run fill ~-2 ~-3 ~-2 ~-2 ~ ~-2 lava replace air
execute at @e[tag=legends] run fill ~2 ~-3 ~-2 ~2 ~ ~-2 lava replace air
execute at @e[tag=legends] run fill ~-2 ~-3 ~2 ~-2 ~ ~2 lava replace air
execute at @e[tag=legends] run fill ~2 ~-3 ~2 ~2 ~ ~2 lava replace air

# === DEATH DETECTION ===
execute unless entity @e[tag=legends1] if bossbar minilegends:legends1 exists run bossbar remove minilegends:legends1
execute unless entity @e[tag=legends2] if bossbar minilegends:legends2 exists run bossbar remove minilegends:legends2
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run title @a title {"text":"Apollon Defeated!","color":"green"}

# === XP DROP (40 levels = ~2920 XP) - only once when both dead ===
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:1000}
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:1000}
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:920}

# === ALIVE TRACKING ===
execute if entity @e[tag=legends] run scoreboard players set #legends_alive ml.timer 1
execute unless entity @e[tag=legends] run scoreboard players set #legends_alive ml.timer 0
