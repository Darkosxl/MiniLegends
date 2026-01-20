# ============================================
# USE TOME OF STR
# ============================================

# Revoke advancement
advancement revoke @s only minilegends:tomes/use_str

# Spawn STR
execute at @s run function minilegends:bosses/legende

# Remove tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @a {"text":"STR, The Experiment has been summoned!","color":"dark_purple","bold":true}
playsound minecraft:entity.enderman.stare player @a
playsound minecraft:entity.item.break player @a