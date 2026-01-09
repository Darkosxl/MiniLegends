# ============================================
# USE TOME OF APOLLON - Called when advancement triggers
# ============================================

# Revoke advancement first (so it can trigger again)
advancement revoke @s only minilegends:tomes/use_apollon

# Spawn Apollon at player's position
execute at @s run function minilegends:bosses/legends

# Remove one tome from player's hand (inline, like working datapack)
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @a {"text":"Apollon, The Ruin has been summoned!","color":"gold","bold":true}
playsound minecraft:entity.evoker.prepare_summon player @a
playsound minecraft:entity.item.break player @a
