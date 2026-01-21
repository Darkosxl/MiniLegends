# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:tomes/use_krapfen

# Check if another boss is already active
execute if entity @e[tag=minilegends_boss] run tellraw @s [{"text":"[MiniLegends] ","color":"gold"},{"text":"Another boss is already active!","color":"red"}]
execute if entity @e[tag=minilegends_boss] run return 0

# Summon Krapfen at player location
execute at @s run function minilegends:bosses/krapfen

# Consume the tome (remove 1 from mainhand)
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}
