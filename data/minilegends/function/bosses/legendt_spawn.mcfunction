# ============================================
# SPAWN DARKWARRO - The ultimate boss appears
# Called after all gauntlet bosses are dead
# ============================================

# Remove gauntlet boss bar
bossbar remove minilegends:legendt_gauntlet

# Dramatic announcement
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"The champions have fallen...","color":"gray"}]
tellraw @a [{"text":"[","color":"gray"},{"text":"Darkwarro","color":"dark_red","bold":true},{"text":"] ","color":"gray"},{"text":"NOW YOU FACE TRUE TERROR!","color":"dark_red","bold":true}]

# Effects
playsound minecraft:entity.warden.emerge master @a -50000 160 -50000 2 1
playsound minecraft:entity.warden.roar master @a -50000 160 -50000 2 0.8
effect give @a darkness 5 0 true
particle minecraft:sculk_soul -50000 150 -50000 5 3 5 0.1 100

# Summon Darkwarro (4000 HP Warden)
summon warden -50000 146 -50000 {CustomName:'"Darkwarro, TERROR"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["legendt","minilegends_boss"],attributes:[{id:"minecraft:max_health",base:4000.0}],Health:4000.0f,active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}]}

# Set phase to 1 (Darkwarro fight)
scoreboard players set #terror_phase ml.random 1

# Setup boss bar
bossbar add minilegends:legendt {"text":"Darkwarro, TERROR","color":"red","bold":true}
bossbar set minilegends:legendt color red
bossbar set minilegends:legendt max 4000
bossbar set minilegends:legendt value 4000
bossbar set minilegends:legendt players @a
bossbar set minilegends:legendt visible true

# Initialize timer
scoreboard players set @e[tag=legendt,limit=1] ml.timer 0
