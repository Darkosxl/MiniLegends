# ============================================
# DARKWARRO DEATH - Ultimate victory!
# 100 levels XP, special reward, cleanup
# ============================================

# Victory announcement
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"TERROR VANQUISHED! You have defeated Darkwarro!","color":"green","bold":true}]
tellraw @a [{"text":"[","color":"gray"},{"text":"Darkwarro","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Impossible... how...","color":"gray","italic":true}]

# Sound effects
playsound minecraft:ui.toast.challenge_complete master @a -50000 160 -50000 2 1
playsound minecraft:entity.ender_dragon.death master @a -50000 160 -50000 2 0.8
playsound minecraft:entity.player.levelup master @a -50000 160 -50000 2 1

# 100 levels worth of XP (1395 + 7*99 = massive orbs)
execute positioned -50000 150 -50000 run summon experience_orb ~ ~ ~ {Value:10000}
execute positioned -50000 150 -50000 run summon experience_orb ~ ~ ~ {Value:10000}
execute positioned -50000 150 -50000 run summon experience_orb ~ ~ ~ {Value:10000}
execute positioned -50000 150 -50000 run summon experience_orb ~ ~ ~ {Value:10000}
execute positioned -50000 150 -50000 run summon experience_orb ~ ~ ~ {Value:10000}

# Spawn reward chest with Sonic X sword
setblock -50000 146 -50000 chest{CustomName:'{"text":"TERROR VANQUISHED","color":"dark_red","bold":true}',Items:[{Slot:13b,id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_name":'{"text":"Darkwarros Fury","color":"dark_aqua","bold":true}',"minecraft:enchantments":{"minilegends:sonic_x":1},"minecraft:lore":['{"text":"The blade of the fallen TERROR","color":"gray","italic":true}','{"text":"Every strike echoes with destruction","color":"dark_aqua"}']}}]}

# Particles at reward chest
execute positioned -50000 146 -50000 run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.3 200

# Remove boss bar
bossbar remove minilegends:legendt

# Reset phase
scoreboard players set #terror_phase ml.random 0
scoreboard players set #terror_kills ml.random 0

# Give players slow falling
effect give @a slow_falling 10 0 true

# Schedule arena cleanup
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Collect your rewards! Arena closing in 60 seconds...","color":"yellow"}]
schedule function minilegends:tick/legendt_cleanup 1200t
