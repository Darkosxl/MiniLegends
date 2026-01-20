# ============================================
# LEGEND C (x5) - Frigis, The Nuclear
# 5 Creepers with massive explosion + lava lake
# ============================================

# Check if another boss is already active
execute if entity @e[tag=minilegends_boss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0
execute if entity @e[tag=miniboss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=miniboss] run return 0

# Summon 5 creepers with 5x HP (100) and speed 6
summon creeper ~ ~ ~ {CustomName:'"Frigis"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legendc","legendc_primary"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~3 ~ ~ run summon creeper ~ ~ ~ {CustomName:'"Frigis"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~-3 ~ ~ run summon creeper ~ ~ ~ {CustomName:'"Frigis"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~ ~ ~3 run summon creeper ~ ~ ~ {CustomName:'"Frigis"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}
execute positioned ~ ~ ~-3 run summon creeper ~ ~ ~ {CustomName:'"Frigis"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","legendc"],attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:speed",amplifier:5,duration:-1,show_particles:false}]}

# Set health to max for all
execute as @e[type=creeper,tag=legendc] run data modify entity @s Health set value 100f

# Create boss bar
bossbar add minilegends:legendc {"text":"Frigis, The Nuclear","color":"yellow","bold":true}
bossbar set minilegends:legendc color yellow
bossbar set minilegends:legendc max 500
bossbar set minilegends:legendc value 500
bossbar set minilegends:legendc players @a[distance=..50]
bossbar set minilegends:legendc visible true

# Announce spawn
title @a[distance=..50] title {"text":"Frigis","color":"yellow","bold":true}
title @a[distance=..50] subtitle {"text":"The Nuclear","color":"gold"}
playsound minecraft:entity.creeper.primed master @a[distance=..50] ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 0.5 1.2
