# ============================================
# LEGEND E - STR, The Experiment
# 2x size enderman with skeleton rider
# Sand Coffin ability - traps players in sand walls
# Phase 2: Lightning storm, wither touch, speed boost
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"The experiment has escaped...","color":"dark_purple","italic":true}]

# Create blue team if it doesn't exist
team add ml_blue
team modify ml_blue color blue

# Summon the boss (500 HP like Warden, Fire Resistance + Strength III permanent)
summon enderman ~ ~ ~ {CustomName:'"STR, The Experiment"',CustomNameVisible:1b,Glowing:1b,PersistenceRequired:1b,carriedBlockState:{Name:"minecraft:diamond_block"},Tags:["legende","minilegends_boss"],ActiveEffects:[{id:"minecraft:strength",amplifier:2,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],Attributes:[{Name:"minecraft:scale",Base:2.0},{Name:"minecraft:max_health",Base:500.0}],Health:500.0f,Passengers:[{id:"minecraft:skeleton",CustomName:'"Hollow Rider"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["legende_rider"],Attributes:[{Name:"minecraft:max_health",Base:1000.0}],Health:1000.0f,HandItems:[{id:"minecraft:bow",count:1},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slowness",amplifier:2,duration:200}]}}}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",count:1}]}]}

# Add enderman to blue team for glow color
team join ml_blue @e[tag=legende,limit=1,sort=nearest]

# Setup boss bar (blue)
bossbar add minilegends:legende {"text":"STR, The Experiment","color":"blue","bold":true}
bossbar set minilegends:legende color blue
bossbar set minilegends:legende max 500
bossbar set minilegends:legende value 500
bossbar set minilegends:legende players @a[distance=..100]
bossbar set minilegends:legende visible true

# Initialize coffin timer
scoreboard players set @e[tag=legende,limit=1,sort=nearest] ml.timer 0

# Effects
playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 1 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 1
particle minecraft:reverse_portal ~ ~2 ~ 1 1 1 0.1 100
