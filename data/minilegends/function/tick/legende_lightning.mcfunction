# ============================================
# LIGHTNING STORM - 4 lightning strikes in ring around boss
# Strikes between 3-5 blocks away (not immediate 3x3)
# ============================================

# Strike 1 - North side (4 blocks out)
execute positioned ~ ~ ~4 run summon lightning_bolt ~ ~ ~

# Strike 2 - East side (4 blocks out)
execute positioned ~4 ~ ~ run summon lightning_bolt ~ ~ ~

# Strike 3 - South side (4 blocks out)
execute positioned ~ ~ ~-4 run summon lightning_bolt ~ ~ ~

# Strike 4 - West side (4 blocks out)
execute positioned ~-4 ~ ~ run summon lightning_bolt ~ ~ ~

# Sound effect
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.7
