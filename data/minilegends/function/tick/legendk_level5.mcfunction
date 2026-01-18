# ============================================
# LEVEL 4 ACTIVATION - MY STORY (Final Phase)
# "MY STORY ENDS WITH ME" - 6x6 TNT explosion
# ============================================

scoreboard players set #kira_level ml.random 5

# Dramatic announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"MY STORY ENDS WITH ME!","color":"dark_red","bold":true,"obfuscated":false}]

playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.8

# Brief pause effect
effect give @a[distance=..100] darkness 3 0 true

# Spawn 36 TNTs in 6x6 grid around boss
execute at @s run summon tnt ~-3 ~ ~-3 {fuse:40}
execute at @s run summon tnt ~-2 ~ ~-3 {fuse:40}
execute at @s run summon tnt ~-1 ~ ~-3 {fuse:40}
execute at @s run summon tnt ~ ~ ~-3 {fuse:40}
execute at @s run summon tnt ~1 ~ ~-3 {fuse:40}
execute at @s run summon tnt ~2 ~ ~-3 {fuse:40}

execute at @s run summon tnt ~-3 ~ ~-2 {fuse:40}
execute at @s run summon tnt ~-2 ~ ~-2 {fuse:40}
execute at @s run summon tnt ~-1 ~ ~-2 {fuse:40}
execute at @s run summon tnt ~ ~ ~-2 {fuse:40}
execute at @s run summon tnt ~1 ~ ~-2 {fuse:40}
execute at @s run summon tnt ~2 ~ ~-2 {fuse:40}

execute at @s run summon tnt ~-3 ~ ~-1 {fuse:40}
execute at @s run summon tnt ~-2 ~ ~-1 {fuse:40}
execute at @s run summon tnt ~-1 ~ ~-1 {fuse:40}
execute at @s run summon tnt ~ ~ ~-1 {fuse:40}
execute at @s run summon tnt ~1 ~ ~-1 {fuse:40}
execute at @s run summon tnt ~2 ~ ~-1 {fuse:40}

execute at @s run summon tnt ~-3 ~ ~ {fuse:40}
execute at @s run summon tnt ~-2 ~ ~ {fuse:40}
execute at @s run summon tnt ~-1 ~ ~ {fuse:40}
execute at @s run summon tnt ~ ~ ~ {fuse:40}
execute at @s run summon tnt ~1 ~ ~ {fuse:40}
execute at @s run summon tnt ~2 ~ ~ {fuse:40}

execute at @s run summon tnt ~-3 ~ ~1 {fuse:40}
execute at @s run summon tnt ~-2 ~ ~1 {fuse:40}
execute at @s run summon tnt ~-1 ~ ~1 {fuse:40}
execute at @s run summon tnt ~ ~ ~1 {fuse:40}
execute at @s run summon tnt ~1 ~ ~1 {fuse:40}
execute at @s run summon tnt ~2 ~ ~1 {fuse:40}

execute at @s run summon tnt ~-3 ~ ~2 {fuse:40}
execute at @s run summon tnt ~-2 ~ ~2 {fuse:40}
execute at @s run summon tnt ~-1 ~ ~2 {fuse:40}
execute at @s run summon tnt ~ ~ ~2 {fuse:40}
execute at @s run summon tnt ~1 ~ ~2 {fuse:40}
execute at @s run summon tnt ~2 ~ ~2 {fuse:40}

# Particles
execute at @s run particle minecraft:explosion ~ ~1 ~ 3 1 3 0.1 30
execute at @s run particle minecraft:flame ~ ~1 ~ 3 1 3 0.2 100
