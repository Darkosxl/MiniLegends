# ============================================
# LEGEND Z (reiN) - The Gestalt
# Summons reiN + 10 Mini S companions
# ============================================

# Check if another boss is already active
execute if entity @e[tag=minilegends_boss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0
execute if entity @e[tag=miniboss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=miniboss] run return 0

# Summon reiN (Zombie with Steve head + fire immunity) - 1.21 format with enchants
summon zombie ~ ~ ~ {CustomName:'"reiN"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["miniboss","legendz","rein","legend_primary"],DeathLootTable:"minilegends:legend_drops",attributes:[{id:"minecraft:max_health",base:375},{id:"minecraft:movement_speed",base:0.3}],equipment:{mainhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":6}}},offhand:{id:"minecraft:shield",count:1},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"Steve"}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":11,"minecraft:thorns":4}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:protection":11}}},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{"minecraft:protection":11,"minecraft:feather_falling":2}}}},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:false}]}

# Set health to max after spawn
execute as @e[type=zombie,tag=rein,limit=1,sort=nearest] run data modify entity @s Health set value 375f

# Create boss bar for reiN
bossbar add minilegends:rein {"text":"reiN","color":"white","bold":true}
bossbar set minilegends:rein color white
bossbar set minilegends:rein max 375
bossbar set minilegends:rein value 375
bossbar set minilegends:rein players @a[distance=..50]
bossbar set minilegends:rein visible true

# Spawn 10 Mini S companions in a circle around reiN
execute positioned ~3 ~ ~ run function minilegends:bosses/minis
execute positioned ~-3 ~ ~ run function minilegends:bosses/minis
execute positioned ~ ~ ~3 run function minilegends:bosses/minis
execute positioned ~ ~ ~-3 run function minilegends:bosses/minis
execute positioned ~2 ~ ~2 run function minilegends:bosses/minis
execute positioned ~-2 ~ ~2 run function minilegends:bosses/minis
execute positioned ~2 ~ ~-2 run function minilegends:bosses/minis
execute positioned ~-2 ~ ~-2 run function minilegends:bosses/minis
execute positioned ~1 ~ ~3 run function minilegends:bosses/minis
execute positioned ~-1 ~ ~-3 run function minilegends:bosses/minis

# Announce spawn
title @a[distance=..50] title {"text":"reiN","color":"white","bold":true}
title @a[distance=..50] subtitle {"text":"The Gestalt","color":"gray"}
playsound minecraft:entity.wither.spawn master @a[distance=..50] ~ ~ ~ 1 0.8