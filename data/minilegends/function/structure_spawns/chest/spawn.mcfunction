# ============================================
# SPAWN MYSTERY CHEST - Places a trapped chest that summons a random boss
# ============================================

# Find a valid spot nearby and place the chest
execute at @s run setblock ~ ~ ~ minecraft:trapped_chest{CustomName:'{"text":"PREPARE","color":"dark_red","bold":true}'}

# Spawn invisible marker armor stand to track the chest location
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["mystery_chest_marker"]}

# Ambient effect
execute at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 0.5
execute at @s run particle minecraft:dust{color:[0.5,0.0,0.5],scale:1.0} ~ ~0.5 ~ 0.5 0.5 0.5 0 20
