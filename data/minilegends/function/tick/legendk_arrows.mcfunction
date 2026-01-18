# ============================================
# ZA WARUDO ARROWS - Poison arrows toward random player
# Spawns arrows with motion toward a player
# ============================================

# Sound warning
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.8

# Spawn poison arrows from multiple directions aimed at a random player
# Arrow spawns high and flies down/toward player

# Get a player position and spawn arrows around them flying inward
execute as @r at @s run summon arrow ~5 ~3 ~ {damage:6.0d,Motion:[-2.0d,-0.5d,0.0d],pickup:0b,PierceLevel:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}

execute as @r at @s run summon arrow ~-5 ~3 ~ {damage:6.0d,Motion:[2.0d,-0.5d,0.0d],pickup:0b,PierceLevel:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}

execute as @r at @s run summon arrow ~ ~3 ~5 {damage:6.0d,Motion:[0.0d,-0.5d,-2.0d],pickup:0b,PierceLevel:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}

execute as @r at @s run summon arrow ~ ~3 ~-5 {damage:6.0d,Motion:[0.0d,-0.5d,2.0d],pickup:0b,PierceLevel:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}

# Diagonal arrows
execute as @r at @s run summon arrow ~4 ~4 ~4 {damage:6.0d,Motion:[-1.5d,-0.5d,-1.5d],pickup:0b,PierceLevel:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}

execute as @r at @s run summon arrow ~-4 ~4 ~-4 {damage:6.0d,Motion:[1.5d,-0.5d,1.5d],pickup:0b,PierceLevel:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}

# Particles
execute as @a at @s run particle minecraft:witch ~ ~1 ~ 1 1 1 0.05 20

tellraw @a [{"text":"[","color":"gray"},{"text":"Kira","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"MUDA MUDA MUDA!","color":"yellow","italic":true}]
