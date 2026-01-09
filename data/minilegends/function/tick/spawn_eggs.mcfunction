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
