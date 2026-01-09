# ============================================
# USE LEGEND S EGG - Called when advancement triggers
# ============================================

# Spawn Apollon at player's looking position
execute at @s anchored eyes run function minilegends:bosses/legendS

# Remove one egg from player's hand
item modify entity @s weapon.mainhand minilegends:consume_one

# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:eggs/legends
