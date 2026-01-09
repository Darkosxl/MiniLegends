# ============================================
# SPAWN EGG DETECTION - Tick Logic
# Called from main tick.mcfunction
# ============================================

# Legend S egg - replace spawned skeleton with Legend S
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{legendS_egg:1b}}}}] at @s as @e[type=skeleton,tag=!legendS,distance=..5,nbt={Age:0}] at @s run function minilegends:bosses/legendS
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{legendS_egg:1b}}}}] at @s run kill @e[type=skeleton,tag=!legendS,distance=..5,nbt={Age:0}]

# Legend Z egg - replace spawned wither skeleton with reiN
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{legendZ_egg:1b}}}}] at @s as @e[type=wither_skeleton,tag=!rein,distance=..5,nbt={Age:0}] at @s run function minilegends:bosses/legendZ
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{legendZ_egg:1b}}}}] at @s run kill @e[type=wither_skeleton,tag=!rein,distance=..5,nbt={Age:0}]

# === EXPLOSIVE BOW (player weapon from loot drop) ===
# Detect arrows from players holding explosive bow, explode on impact
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~1 ~ ~ {fuse:0}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~-1 ~ ~ {fuse:0}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s run kill @e[type=arrow,nbt={inGround:1b},distance=..100]
