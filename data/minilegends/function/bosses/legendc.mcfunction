# ============================================
# LEGEND C (x5) - Nuclear Creepers
# 5 Creepers with massive explosion + lava lake
# ============================================

# Summon 5 creepers with 5x HP (100) and speed 6
summon creeper ~ ~ ~ {CustomName:'"C"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc","legendc_primary"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~3 ~ ~ run summon creeper ~ ~ ~ {CustomName:'"C"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~-3 ~ ~ run summon creeper ~ ~ ~ {CustomName:'"C"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~ ~ ~3 run summon creeper ~ ~ ~ {CustomName:'"C"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~ ~ ~-3 run summon creeper ~ ~ ~ {CustomName:'"C"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}

# Set health to max for all
execute as @e[type=creeper,tag=legendc] run data modify entity @s Health set value 100f

# Create boss bar
bossbar add minilegends:legendc {"text":"Legend C","color":"yellow","bold":true}
bossbar set minilegends:legendc color yellow
bossbar set minilegends:legendc max 500
bossbar set minilegends:legendc value 500
bossbar set minilegends:legendc players @a[distance=..50]
bossbar set minilegends:legendc visible true

# Announce spawn
title @a[distance=..50] title {"text":"Legend C","color":"yellow","bold":true}
title @a[distance=..50] subtitle {"text":"Nuclear Swarm","color":"gold"}
playsound minecraft:entity.creeper.primed master @a[distance=..50] ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 0.5 1.2
