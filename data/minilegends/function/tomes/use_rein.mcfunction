# ============================================
# USE TOME OF REIN - Called when advancement triggers
# ============================================

# Spawn reiN at player's looking position
execute at @s anchored eyes run function minilegends:bosses/legendZ

# Remove one tome from player's hand
item modify entity @s weapon.mainhand minilegends:consume_one

# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:tomes/use_rein

# Notification
tellraw @a {"text":"reiN, The Gestalt has been summoned!","color":"dark_purple","bold":true}
playsound minecraft:entity.evoker.prepare_summon player @a
playsound minecraft:entity.item.break player @a
