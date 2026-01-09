# ============================================
# USE TOME OF C - Called when advancement triggers
# ============================================

# Revoke advancement first (so it can trigger again)
advancement revoke @s only minilegends:tomes/use_c

# Spawn Legend C at player's position
execute at @s run function minilegends:bosses/legendc

# Remove one tome from player's hand
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @a {"text":"Frigis, The Nuclear has been summoned!","color":"yellow","bold":true}
playsound minecraft:entity.evoker.prepare_summon player @a
playsound minecraft:entity.item.break player @a
