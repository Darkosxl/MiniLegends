# ============================================
# LEGEND S (x2) - Apollon, The Ruin
# Summons 2 Apollon skeletons with explosive arrows + lava rings
# Only legends1 has loot table (prevent farming)
# ============================================

# Summon Apollon #1 (PRIMARY - has loot table + fire resistance)
summon skeleton ~ ~ ~ {CustomName:'{"text":"Apollon","color":"green","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legends","legends1","legend_primary"],Health:250f,Attributes:[{Name:"minecraft:max_health",Base:250},{Name:"minecraft:movement_speed",Base:0.28}],DeathLootTable:"minilegends:legend_drops",ActiveEffects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":15}}}},{}],ArmorItems:[{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":7,"minecraft:feather_falling":5}}}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:projectile_protection":12,"enchantmentplus:traveler":6}}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:projectile_protection":12,"minecraft:thorns":4,"enchantmentplus:enlarged":2}}}},{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:projectile_protection":12}}}}]}

# Summon Apollon #2 (no loot table + fire resistance)
execute positioned ~4 ~ ~ run summon skeleton ~ ~ ~ {CustomName:'{"text":"Apollon","color":"green","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legends","legends2"],Health:250f,Attributes:[{Name:"minecraft:max_health",Base:250},{Name:"minecraft:movement_speed",Base:0.28}],ActiveEffects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":15}}}},{}],ArmorItems:[{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":7,"minecraft:feather_falling":5}}}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:projectile_protection":12,"enchantmentplus:traveler":6}}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:projectile_protection":12,"minecraft:thorns":4,"enchantmentplus:enlarged":2}}}},{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:projectile_protection":12}}}}]}

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
