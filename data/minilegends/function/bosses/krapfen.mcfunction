# ============================================
# LEGEND KRAPFEN - The Punk
# Piglin boss with stealing abilities
# Spawns at execution location
# 300 HP, Full Gold Armor Prot 10
# ============================================

# Check if another boss is already active
execute if entity @e[tag=minilegends_boss] run tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"A punk riot begins...","color":"gold","bold":true}]

# Summon Krapfen at current location (1.21 format)
summon piglin ~ ~ ~ {CustomName:'"Krapfen, The Punk"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["legend_krapfen","minilegends_boss"],IsImmuneToZombification:1b,attributes:[{id:"minecraft:max_health",base:300},{id:"minecraft:knockback_resistance",base:1.0}],drop_chances:{mainhand:2.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f},equipment:{mainhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_name":'{"text":"Kingslayer","color":"gold","bold":true}',"minecraft:enchantments":{"minecraft:fire_aspect":3,"minecraft:sharpness":10,"minilegends:king_stealer":1},"minecraft:lore":['"§8The blade of The Punk"','"§bEvery strike steals equipment!"'],"minecraft:custom_data":{MiniLegendsData:{KingStealer:1}}}},head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:protection":10}}},chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":10}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:protection":10}}},feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:enchantments":{"minecraft:protection":10}}}}}

# Set health to max after spawn
execute as @e[type=piglin,tag=legend_krapfen,limit=1,sort=nearest] run data modify entity @s Health set value 300f

# Setup boss bar
bossbar add minilegends:krapfen {"text":"Krapfen, The Punk","color":"yellow","bold":true}
bossbar set minilegends:krapfen color yellow
bossbar set minilegends:krapfen max 300
bossbar set minilegends:krapfen value 300
bossbar set minilegends:krapfen players @a
bossbar set minilegends:krapfen visible true

# Initialize phase tracking
scoreboard players set @e[tag=legend_krapfen,limit=1] ml.timer 0
scoreboard players set #krapfen_phase ml.random 0
# Initialize last_health for tracking damage thresholds
execute as @e[tag=legend_krapfen,limit=1] store result score @s ml.last_health run data get entity @s Health

# Effects
playsound minecraft:entity.piglin.angry master @a ~ ~ ~ 1 0.5
particle minecraft:flame ~ ~1 ~ 1 1 1 0.1 50

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"Krapfen","color":"gold"},{"text":"] ","color":"gray"},{"text":"Oi! Give me your shiny stuff!","color":"yellow"}]
