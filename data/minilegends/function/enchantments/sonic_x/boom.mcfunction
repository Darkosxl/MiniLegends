# ============================================
# SONIC X BOOM - Warden-style sonic boom on hit
# Damages all enemies in 5 block radius
# ============================================

# Sonic boom visual and sound
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1.2

# Damage all nearby enemies (excluding the attacker)
execute as @e[type=!player,type=!item,type=!experience_orb,type=!arrow,distance=..5] run damage @s 8 minecraft:sonic_boom

# Knockback effect on nearby enemies
execute as @e[type=!player,type=!item,distance=..5] at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Effects:[{id:"minecraft:slowness",amplifier:2,duration:40}]}

# Secondary particles
particle minecraft:sculk_soul ~ ~0.5 ~ 2 0.5 2 0.05 20
