# ============================================
# USE TOME OF REIN - Called when advancement triggers
# ============================================

# Revoke advancement first (so it can trigger again)
advancement revoke @s only minilegends:tomes/use_rein

# Check if another boss is already active (prevent consumption)
execute if entity @e[tag=minilegends_boss] run tellraw @s [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0
execute if entity @e[tag=miniboss] run tellraw @s [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=miniboss] run return 0

# Spawn reiN at player's position
execute at @s run function minilegends:bosses/legendz

# Remove one tome from player's hand (inline, like working datapack)
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @a {"text":"reiN, The Gestalt has been summoned!","color":"dark_purple","bold":true}
playsound minecraft:entity.evoker.prepare_summon player @a
playsound minecraft:entity.item.break player @a
