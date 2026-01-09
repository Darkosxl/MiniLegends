# ============================================
# LEGEND S - Tick Logic
# ============================================

# === BOSS BAR UPDATES ===
execute if entity @e[tag=legends1,limit=1] store result bossbar minilegends:legends1 value run data get entity @e[tag=legends1,limit=1] Health
execute as @a at @s if entity @e[tag=legends1,distance=..50] run bossbar set minilegends:legends1 players @s
execute if entity @e[tag=legends2,limit=1] store result bossbar minilegends:legends2 value run data get entity @e[tag=legends2,limit=1] Health
execute as @a at @s if entity @e[tag=legends2,distance=..50] run bossbar set minilegends:legends2 players @s

# === EXPLOSIVE ARROWS (5 TNT on impact - blocks OR entities) ===
# Explode arrows in ground (hit blocks)
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~ {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~1 ~ ~ {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~-1 ~ ~ {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~1 {fuse:0}
execute at @e[tag=legends] as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~-1 {fuse:0}
execute at @e[tag=legends] run kill @e[type=arrow,nbt={inGround:1b},distance=..100]

# Explode arrows near players (hit players) - check for arrows very close to players
execute as @a at @s as @e[type=arrow,distance=..1.5] at @s if entity @e[tag=legends,distance=..100] run summon tnt ~ ~ ~ {fuse:0}
execute as @a at @s as @e[type=arrow,distance=..1.5] at @s if entity @e[tag=legends,distance=..100] run summon tnt ~1 ~ ~ {fuse:0}
execute as @a at @s as @e[type=arrow,distance=..1.5] at @s if entity @e[tag=legends,distance=..100] run summon tnt ~-1 ~ ~ {fuse:0}
execute as @a at @s as @e[type=arrow,distance=..1.5] at @s if entity @e[tag=legends,distance=..100] run kill @s

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

# === DEATH DETECTION (using score tracking instead of invalid bossbar exists) ===
execute unless entity @e[tag=legends1] if score #legends1_bossbar ml.timer matches 1 run bossbar remove minilegends:legends1
execute unless entity @e[tag=legends2] if score #legends2_bossbar ml.timer matches 1 run bossbar remove minilegends:legends2
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run tellraw @a {"text":"Apollon has been defeated!","color":"green","bold":true}

# === BOSSBAR EXISTS TRACKING ===
execute if entity @e[tag=legends1] run scoreboard players set #legends1_bossbar ml.timer 1
execute unless entity @e[tag=legends1] run scoreboard players set #legends1_bossbar ml.timer 0
execute if entity @e[tag=legends2] run scoreboard players set #legends2_bossbar ml.timer 1
execute unless entity @e[tag=legends2] run scoreboard players set #legends2_bossbar ml.timer 0

# === XP DROP (40 levels = ~2920 XP) - only once when both dead ===
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:1000}
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:1000}
execute unless entity @e[tag=legends] if score #legends_alive ml.timer matches 1 run summon experience_orb ~ ~ ~ {Value:920}

# === ALIVE TRACKING ===
execute if entity @e[tag=legends] run scoreboard players set #legends_alive ml.timer 1
execute unless entity @e[tag=legends] run scoreboard players set #legends_alive ml.timer 0
