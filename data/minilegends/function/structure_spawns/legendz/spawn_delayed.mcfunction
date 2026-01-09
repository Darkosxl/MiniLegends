# ============================================
# SPAWN REIN DELAYED - Called 1 second after explosion
# ============================================

# Find the player who triggered this (nearest to the mansion area)
execute as @a[limit=1,sort=nearest] at @s positioned ~20 ~ ~ run function minilegends:bosses/legendz

# Epic announcement
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"reiN, The Gestalt","color":"white","bold":true},{"text":" has emerged!","color":"red"}]
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5