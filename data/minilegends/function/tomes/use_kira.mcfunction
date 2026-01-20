# ============================================
# USE TOME OF KIRA
# ============================================

# Revoke advancement
advancement revoke @s only minilegends:tomes/use_kira

# Spawn Kira (will handle arena teleport logic itself)
execute at @s run function minilegends:bosses/legendk

# Remove tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @a {"text":"Kira, Player 1 has been summoned!","color":"red","bold":true}
playsound minecraft:entity.evoker.prepare_summon player @a
playsound minecraft:entity.item.break player @a