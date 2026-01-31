# ============================================
# KINGSLAYER HIT - Player version of King Stealer
# Triggered when player hits entity with Kingslayer sword
# 40% chance to make enemy drop equipment
# ============================================

# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:combat/kingslayer_hit

# Get the entity we just hit (nearest entity that took damage recently)
# We tag it temporarily for targeting
tag @e[type=!player,type=!item,type=!experience_orb,type=!arrow,distance=..5,limit=1,sort=nearest] add kingslayer_target

# 40% chance to trigger King Stealer
scoreboard players set #kingslayer_rng ml.random 0
execute store result score #kingslayer_rng ml.random run random value 1..100

# If <= 40, steal equipment from target
execute if score #kingslayer_rng ml.random matches ..40 as @e[tag=kingslayer_target,limit=1] at @s run function minilegends:combat/kingslayer_steal

# Remove temp tag
tag @e[tag=kingslayer_target] remove kingslayer_target
