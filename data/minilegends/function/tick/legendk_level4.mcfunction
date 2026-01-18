# ============================================
# LEVEL 4 ACTIVATION - Power of Friendship
# Summons a Warden ally to fight alongside Kira
# ============================================

scoreboard players set #kira_level ml.random 4

tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Level 4 - POWER OF FRIENDSHIP!","color":"aqua","bold":true}]

playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 2 1
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 2 0.8
particle minecraft:sculk_soul ~ ~1 ~ 2 2 2 0.05 50

# Summon the Warden ally
execute at @s run summon warden ~5 ~ ~ {CustomName:'"Kira\'s Friend"',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["kira_warden","minilegends_boss"],Attributes:[{Name:"minecraft:max_health",Base:500.0}],Health:500.0f}

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"You thought I was alone? Meet my friend!","color":"dark_aqua","italic":true}]

# Dramatic effect
execute at @s run particle minecraft:sonic_boom ~5 ~1 ~ 0 0 0 0 1
