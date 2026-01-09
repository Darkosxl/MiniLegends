# ============================================
# LEGEND S (x2) - Apollon, The Ruin
# Summons 2 Apollon skeletons with explosive arrows + lava rings
# Only legends1 has loot table (prevent farming)
# ============================================

# Summon Apollon #1 (PRIMARY - has loot table + fire resistance) - 1.21 format
summon skeleton ~ ~ ~ {CustomName:'"Apollon"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legends","legends1","legend_primary"],DeathLootTable:"minilegends:legend_drops",attributes:[{id:"minecraft:max_health",base:250},{id:"minecraft:movement_speed",base:0.28}],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":15}}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12,"minecraft:thorns":4}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12}}},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{"minecraft:protection":7,"minecraft:feather_falling":5}}}},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:false}]}

# Set health to max
execute as @e[type=skeleton,tag=legends1,limit=1,sort=nearest] run data modify entity @s Health set value 250f

# Summon Apollon #2 (no loot table + fire resistance) - 1.21 format
execute positioned ~4 ~ ~ run summon skeleton ~ ~ ~ {CustomName:'"Apollon"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legends","legends2"],attributes:[{id:"minecraft:max_health",base:250},{id:"minecraft:movement_speed",base:0.28}],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":15}}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12,"minecraft:thorns":4}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12}}},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{"minecraft:protection":7,"minecraft:feather_falling":5}}}},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:false}]}

# Set health to max
execute as @e[type=skeleton,tag=legends2,limit=1,sort=nearest] run data modify entity @s Health set value 250f

# Create boss bars for both Apollon
bossbar add minilegends:legends1 {"text":"Apollon","color":"green","bold":true}
bossbar set minilegends:legends1 color green
bossbar set minilegends:legends1 max 250
bossbar set minilegends:legends1 value 250
bossbar set minilegends:legends1 players @a[distance=..50]
bossbar set minilegends:legends1 visible true

bossbar add minilegends:legends2 {"text":"Apollon","color":"green","bold":true}
bossbar set minilegends:legends2 color green
bossbar set minilegends:legends2 max 250
bossbar set minilegends:legends2 value 250
bossbar set minilegends:legends2 players @a[distance=..50]
bossbar set minilegends:legends2 visible true

# Announce spawn
title @a[distance=..50] title {"text":"Apollon","color":"green","bold":true}
title @a[distance=..50] subtitle {"text":"The Ruin","color":"dark_green"}
playsound minecraft:entity.skeleton.ambient master @a[distance=..50] ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 0.5 1.2
