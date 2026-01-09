# ============================================
# TICK - Player Items Logic
# Called from main tick.mcfunction
# ============================================

# === EXPLOSIVE BOW (player weapon from loot drop) ===
# Detect arrows from players holding explosive bow, explode on impact
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~1 ~ ~ {fuse:0}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s as @e[type=arrow,nbt={inGround:1b},distance=..100] at @s run summon tnt ~-1 ~ ~ {fuse:0}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{explosive_bow:1b}}}}] at @s run kill @e[type=arrow,nbt={inGround:1b},distance=..100]
