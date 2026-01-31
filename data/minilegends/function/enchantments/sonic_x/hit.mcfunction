# ============================================
# SONIC X HIT - Triggered via advancement
# Fires warden sonic boom at hit target
# ============================================

# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:combat/sonicx_hit

# Tag nearest damaged entity
tag @e[type=!player,type=!item,type=!experience_orb,type=!arrow,distance=..6,limit=1,sort=nearest] add sonic_target

# Run the boom at the target
execute at @e[tag=sonic_target,limit=1] run function minilegends:enchantments/sonic_x/boom

# Remove tag
tag @e[tag=sonic_target] remove sonic_target
