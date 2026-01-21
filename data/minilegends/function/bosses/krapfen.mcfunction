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

# Summon Krapfen at current location
summon piglin ~ ~ ~ {CustomName:'"Krapfen, The Punk"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["legend_krapfen","minilegends_boss"],IsImmuneToZombification:1b,attributes:[{id:"minecraft:generic.max_health",base:300.0},{id:"minecraft:generic.knockback_resistance",base:1.0}],Health:300.0f,HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{display:{Name:'{"text":"Kingslayer","color":"gold"}',Lore:['{"text":"King Stealer I","color":"gray"}']},KingStealer:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:3s},{id:"minecraft:sharpness",lvl:10s}],AttributeModifiers:[{AttributeName:"minecraft:generic.attack_range",Name:"generic.attack_range",Amount:11,Operation:0,UUID:[I;1,2,3,9],Slot:"mainhand"}]}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10s}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10s}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10s}]}},{id:"minecraft:golden_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10s}]}}]}

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
