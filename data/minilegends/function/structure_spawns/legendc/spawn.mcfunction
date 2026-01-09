# ============================================
# SPAWN LEGEND C - Nuclear creepers emerge
# ============================================

# Warning message
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"The ground trembles with nuclear energy...","color":"yellow","italic":true}]

# Spawn 30 blocks away from player
execute at @s positioned ~30 ~ ~ run function minilegends:bosses/legendc

# Epic announcement
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 0.8
