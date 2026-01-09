# ============================================
# SPAWN LEGEND S DELAYED - Called 1 second after explosion
# ============================================

# Find the player who triggered this (nearest to the outpost area)
execute as @a[limit=1,sort=nearest] at @s positioned ~15 ~ ~ run function minilegends:bosses/legendS

# Epic announcement
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Legend S","color":"green","bold":true},{"text":" has arrived!","color":"red"}]
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.8 1.2
