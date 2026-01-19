# ============================================
# KIRA DEATH - Reward chest and cleanup
# Spawns reward chest, teleports players back, destroys arena
# ============================================

# Victory announcement
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"RAID XXI COMPLETE! Kira has been defeated!","color":"green","bold":true}]

# Sound effects
playsound minecraft:ui.toast.challenge_complete master @a 50000 160 50000 2 1
playsound minecraft:entity.player.levelup master @a 50000 160 50000 2 1

# Spawn reward chest at arena center with Terror X bow and Kira's Verdict mace
setblock 50000 156 50000 chest{CustomName:'{"text":"RAID XXI REWARDS","color":"gold","bold":true}',Items:[{Slot:11b,id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'{"text":"Terror X","color":"dark_red","bold":true}',"minecraft:enchantments":{"minilegends:terror_x":1},"minecraft:lore":['{"text":"A weapon of pure destruction","color":"gray","italic":true}','{"text":"Arrows explode on impact","color":"red"}']}},{Slot:15b,id:"minecraft:mace",count:1,components:{"minecraft:custom_name":'{"text":"Kiras Verdict","color":"light_purple","bold":true}',"minecraft:enchantments":{"minecraft:density":15},"minecraft:lore":['{"text":"Fall from the heavens","color":"gray","italic":true}','{"text":"Strike with divine judgment","color":"light_purple"}']}}]}

# Particles at reward chest
execute positioned 50000 156 50000 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 100

# Give players slow falling before teleport
effect give @a slow_falling 10 0 true

# Wait a moment then teleport (let them see the chest)
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Collect your reward! Arena closing in 30 seconds...","color":"yellow"}]

# Schedule arena destruction (30 seconds = 600 ticks)
schedule function minilegends:tick/legendk_cleanup 600t

# Kill any remaining mobs from the fight
kill @e[tag=kira_warden]
kill @e[type=zombie,x=50000,y=160,z=50000,distance=..100]
kill @e[type=skeleton,x=50000,y=160,z=50000,distance=..100]

# Reset level
scoreboard players set #kira_level ml.random 0
