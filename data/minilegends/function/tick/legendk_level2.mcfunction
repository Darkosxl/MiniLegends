# ============================================
# LEVEL 2 ACTIVATION - Army of Hell unlocked
# Places mob spawners on the floor with diamond zombies
# ============================================

scoreboard players set #kira_level ml.random 2

tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Level 2 - ARMY OF HELL!","color":"dark_red","bold":true}]

playsound minecraft:entity.wither.spawn master @a 50000 160 50000 1 0.8
playsound minecraft:entity.zombie.ambient master @a 50000 160 50000 2 0.5
particle minecraft:smoke 50000 160 50000 2 2 2 0.1 100

# Place diamond zombie spawners on floor (Y=155) - Sharpness 3 swords
setblock 49985 155 49985 spawner{SpawnData:{entity:{id:"minecraft:zombie",equipment:{head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1},legs:{id:"minecraft:diamond_leggings",count:1},feet:{id:"minecraft:diamond_boots",count:1},mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":3}}}}}},SpawnRange:6,RequiredPlayerRange:50,SpawnCount:2,MinSpawnDelay:200,MaxSpawnDelay:400}

setblock 50015 155 49985 spawner{SpawnData:{entity:{id:"minecraft:zombie",equipment:{head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1},legs:{id:"minecraft:diamond_leggings",count:1},feet:{id:"minecraft:diamond_boots",count:1},mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":3}}}}}},SpawnRange:6,RequiredPlayerRange:50,SpawnCount:2,MinSpawnDelay:200,MaxSpawnDelay:400}

setblock 49985 155 50015 spawner{SpawnData:{entity:{id:"minecraft:zombie",equipment:{head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1},legs:{id:"minecraft:diamond_leggings",count:1},feet:{id:"minecraft:diamond_boots",count:1},mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":3}}}}}},SpawnRange:6,RequiredPlayerRange:50,SpawnCount:2,MinSpawnDelay:200,MaxSpawnDelay:400}

setblock 50015 155 50015 spawner{SpawnData:{entity:{id:"minecraft:zombie",equipment:{head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1},legs:{id:"minecraft:diamond_leggings",count:1},feet:{id:"minecraft:diamond_boots",count:1},mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":3}}}}}},SpawnRange:6,RequiredPlayerRange:50,SpawnCount:2,MinSpawnDelay:200,MaxSpawnDelay:400}

# Place skeleton spawners - Punch 4 bows
setblock 50000 155 49988 spawner{SpawnData:{entity:{id:"minecraft:skeleton",equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:punch":4}}}}}},SpawnRange:6,RequiredPlayerRange:50,SpawnCount:2,MinSpawnDelay:250,MaxSpawnDelay:500}

setblock 50000 155 50012 spawner{SpawnData:{entity:{id:"minecraft:skeleton",equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:punch":4}}}}}},SpawnRange:6,RequiredPlayerRange:50,SpawnCount:2,MinSpawnDelay:250,MaxSpawnDelay:500}

# Announcement
tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"Rise, my minions!","color":"red","italic":true}]
