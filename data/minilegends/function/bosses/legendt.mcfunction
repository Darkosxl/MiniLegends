# ============================================
# LEGEND T - Darkwarro, TERROR
# Ultimate Warden boss with pre-fight gauntlet
# Arena at x=-50000 z=-50000 (opposite of Kira)
# Phase 1: Fight Apollon, Frigis, STR
# Phase 2: Face Darkwarro (4000 HP Warden)
# ============================================

# Check if another boss is already active
execute if entity @e[tag=minilegends_boss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0
execute if entity @e[tag=miniboss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=miniboss] run return 0

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"You have entered the TERROR zone...","color":"dark_red","italic":true}]

# Build arena at fixed location (opposite corner from Kira)
execute positioned -50000 140 -50000 run function minilegends:bosses/legendt_arena

# Teleport all players to arena center
tp @a -50000 156 -50000

# Setup boss bar for gauntlet phase
bossbar add minilegends:legendt_gauntlet {"text":"GAUNTLET - Defeat the Legends","color":"dark_purple","bold":true}
bossbar set minilegends:legendt_gauntlet color purple
bossbar set minilegends:legendt_gauntlet max 3
bossbar set minilegends:legendt_gauntlet value 3
bossbar set minilegends:legendt_gauntlet players @a
bossbar set minilegends:legendt_gauntlet visible true

# Initialize terror phase (0 = gauntlet, 1 = darkwarro)
scoreboard players set #terror_phase ml.random 0
scoreboard players set #terror_kills ml.random 0

# Spawn the three pre-bosses (simplified versions tagged for tracking)
# Apollon (2 skeletons)
execute positioned -50020 156 -50000 run summon skeleton ~ ~ ~ {CustomName:'"Apollon"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_apollon"],attributes:[{id:"minecraft:max_health",base:250.0}],Health:250.0f,hand_items:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":5,"minecraft:flame":1}}},{}],armor_items:[{id:"minecraft:netherite_boots",count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:netherite_chestplate",count:1},{id:"minecraft:netherite_helmet",count:1}]}

execute positioned -50020 156 -50005 run summon skeleton ~ ~ ~ {CustomName:'"Apollon"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_apollon"],attributes:[{id:"minecraft:max_health",base:250.0}],Health:250.0f,hand_items:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":5,"minecraft:flame":1}}},{}],armor_items:[{id:"minecraft:netherite_boots",count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:netherite_chestplate",count:1},{id:"minecraft:netherite_helmet",count:1}]}

# Frigis (5 charged creepers)
execute positioned -50000 156 -50030 run summon creeper ~ ~ ~ {CustomName:'"Frigis"',CustomNameVisible:1b,powered:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_frigis"],attributes:[{id:"minecraft:max_health",base:100.0},{id:"minecraft:movement_speed",base:0.5}],Health:100.0f,ExplosionRadius:6}
execute positioned -50003 156 -50030 run summon creeper ~ ~ ~ {powered:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_frigis"],attributes:[{id:"minecraft:max_health",base:100.0},{id:"minecraft:movement_speed",base:0.5}],Health:100.0f,ExplosionRadius:6}
execute positioned -49997 156 -50030 run summon creeper ~ ~ ~ {powered:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_frigis"],attributes:[{id:"minecraft:max_health",base:100.0},{id:"minecraft:movement_speed",base:0.5}],Health:100.0f,ExplosionRadius:6}
execute positioned -50000 156 -50033 run summon creeper ~ ~ ~ {powered:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_frigis"],attributes:[{id:"minecraft:max_health",base:100.0},{id:"minecraft:movement_speed",base:0.5}],Health:100.0f,ExplosionRadius:6}
execute positioned -50000 156 -50027 run summon creeper ~ ~ ~ {powered:1b,PersistenceRequired:1b,Tags:["terror_gauntlet","terror_frigis"],attributes:[{id:"minecraft:max_health",base:100.0},{id:"minecraft:movement_speed",base:0.5}],Health:100.0f,ExplosionRadius:6}

# STR (enderman with skeleton rider)
execute positioned -50000 156 -49970 run summon enderman ~ ~ ~ {CustomName:'"STR"',CustomNameVisible:1b,Glowing:1b,PersistenceRequired:1b,carriedBlockState:{Name:"minecraft:diamond_block"},Tags:["terror_gauntlet","terror_str"],active_effects:[{id:"minecraft:strength",amplifier:2,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:2.0},{id:"minecraft:max_health",base:500.0}],Health:500.0f,Passengers:[{id:"minecraft:skeleton",CustomName:'"Hollow Rider"',PersistenceRequired:1b,Tags:["terror_gauntlet"],attributes:[{id:"minecraft:max_health",base:500.0}],Health:500.0f,hand_items:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:punch":4}}},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water",custom_effects:[{id:"minecraft:slowness",amplifier:2,duration:200}]}}}],armor_items:[{},{},{},{id:"minecraft:iron_helmet",count:1}]}]}

# Effects
playsound minecraft:entity.ender_dragon.growl master @a -50000 160 -50000 2 0.5
particle minecraft:explosion_emitter -50000 160 -50000 5 2 5 0 5

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"???","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"First... prove yourself against my champions!","color":"red","italic":true}]
