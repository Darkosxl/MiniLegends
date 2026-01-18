# ============================================
# SPAWN MYSTERY CHEST - Places a trapped chest that summons a random boss
# 15% chance to be a Kira chest (RAID XXI)
# ============================================

# Roll for Kira chest (15% = 1-3 out of 20)
execute store result score #chest_type ml.random run random value 1..20

# Kira chest (15% chance)
execute if score #chest_type ml.random matches 1..3 at @s run setblock ~ ~ ~ minecraft:trapped_chest{CustomName:'{"text":"PREPARE, RAID XXI","color":"dark_red","bold":true}'}
execute if score #chest_type ml.random matches 1..3 at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["mystery_chest_marker","kira_chest"]}
execute if score #chest_type ml.random matches 1..3 at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 0.5
execute if score #chest_type ml.random matches 1..3 at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 0.5 0.5 0.02 30

# Normal chest (85% chance)
execute if score #chest_type ml.random matches 4..20 at @s run setblock ~ ~ ~ minecraft:trapped_chest{CustomName:'{"text":"PREPARE","color":"dark_red","bold":true}'}
execute if score #chest_type ml.random matches 4..20 at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["mystery_chest_marker"]}
execute if score #chest_type ml.random matches 4..20 at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 0.5
execute if score #chest_type ml.random matches 4..20 at @s run particle minecraft:dust{color:[0.5,0.0,0.5],scale:1.0} ~ ~0.5 ~ 0.5 0.5 0.5 0 20
