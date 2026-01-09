# ============================================
# USE TOME OF REIN - Called when advancement triggers
# ============================================

# Spawn reiN at player's looking position
execute at @s anchored eyes run function minilegends:bosses/legendZ

# Remove one tome from player's hand
item modify entity @s weapon.mainhand minilegends:consume_one

# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:tomes/use_rein
