# ============================================
# LEGEND K - Kira, Player 1
# Evoker boss with leveling skills
# Creates obsidian arena at x=50000 z=50000 y=140
# 2000 HP, skills at 85%, 70%, 55%, 30%, 2%
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"A dark presence materializes...","color":"dark_purple","italic":true}]

# Build arena at fixed location far from spawn
execute positioned 50000 140 50000 run function minilegends:bosses/legendk_arena

# Teleport all players to arena center
tp @a 50000 156 50000

# Summon the boss at arena center
summon evoker 50000 156 50000 {CustomName:'"Kira, Player 1"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["legendk","minilegends_boss"],Attributes:[{Name:"minecraft:max_health",Base:2000.0}],Health:2000.0f,ActiveEffects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:1,duration:-1,show_particles:0b}]}

# Setup boss bar (red for danger)
bossbar add minilegends:legendk {"text":"Kira, Player 1","color":"red","bold":true}
bossbar set minilegends:legendk color red
bossbar set minilegends:legendk max 2000
bossbar set minilegends:legendk value 2000
bossbar set minilegends:legendk players @a
bossbar set minilegends:legendk visible true

# Initialize skill level (0 = no skills yet)
scoreboard players set @e[tag=legendk,limit=1,sort=nearest] ml.timer 0
scoreboard players set #kira_level ml.random 0

# Effects
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.8
particle minecraft:witch 50000 157 50000 1 1 1 0.1 50

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Welcome to my arena. Let the game begin!","color":"red","italic":true}]
