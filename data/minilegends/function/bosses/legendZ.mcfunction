.
# ============================================
# LEGEND Z (reiN) - The Long-Armed
# Summons reiN + 10 Mini S companions
# ============================================

# Summon reiN (Wither Skeleton with Steve head)
summon wither_skeleton ~ ~ ~ {CustomName:'{"text":"reiN","color":"white","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legendZ","rein"],Health:375f,Attributes:[{Name:"minecraft:max_health",Base:375},{Name:"minecraft:movement_speed",Base:0.3}],HandItems:[{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantments":{levels:{"enchantmentplus:entity_reach":40,"minecraft:sharpness":6,"enchantmentplus:lightweight":3}}}},{id:"minecraft:shield",count:1}],ArmorItems:[{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":11,"minecraft:feather_falling":2}}}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":11}}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":11,"minecraft:thorns":4,"enchantmentplus:enlarged":2}}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"Steve"}}]}

# Create boss bar for reiN
bossbar add minilegends:rein {"text":"reiN","color":"white","bold":true}
bossbar set minilegends:rein color white
bossbar set minilegends:rein max 375
bossbar set minilegends:rein value 375
bossbar set minilegends:rein players @a[distance=..50]
bossbar set minilegends:rein visible true

# Spawn 10 Mini S companions in a circle around reiN
execute positioned ~3 ~ ~ run function minilegends:bosses/miniS
execute positioned ~-3 ~ ~ run function minilegends:bosses/miniS
execute positioned ~ ~ ~3 run function minilegends:bosses/miniS
execute positioned ~ ~ ~-3 run function minilegends:bosses/miniS
execute positioned ~2 ~ ~2 run function minilegends:bosses/miniS
execute positioned ~-2 ~ ~2 run function minilegends:bosses/miniS
execute positioned ~2 ~ ~-2 run function minilegends:bosses/miniS
execute positioned ~-2 ~ ~-2 run function minilegends:bosses/miniS
execute positioned ~1 ~ ~3 run function minilegends:bosses/miniS
execute positioned ~-1 ~ ~-3 run function minilegends:bosses/miniS

# Announce spawn
title @a[distance=..50] title {"text":"reiN","color":"white","bold":true}
title @a[distance=..50] subtitle {"text":"The Gestalt","color":"gray"}
playsound minecraft:entity.wither.spawn master @a[distance=..50] ~ ~ ~ 1 0.8