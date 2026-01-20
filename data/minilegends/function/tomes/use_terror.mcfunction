# ============================================
# USE TOME OF TERROR
# ============================================

# Revoke advancement
advancement revoke @s only minilegends:tomes/use_terror

# Check if another boss is already active (prevent consumption)
execute if entity @e[tag=minilegends_boss] run tellraw @s [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0
execute if entity @e[tag=miniboss] run tellraw @s [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=miniboss] run return 0

# Spawn Terror (starts gauntlet)
execute at @s run function minilegends:bosses/legendt

# Remove tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @a {"text":"Darkwarro, TERROR has been summoned...","color":"dark_red","bold":true}
playsound minecraft:entity.warden.emerge player @a
playsound minecraft:entity.item.break player @a