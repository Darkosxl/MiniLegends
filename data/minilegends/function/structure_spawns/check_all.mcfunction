# Check all structures for boss spawns
execute as @a at @s if predicate minilegends:near_mansion unless entity @e[tag=rein,distance=..500] run function minilegends:structure_spawns/legendZ/spawn
execute as @a at @s if predicate minilegends:near_outpost unless entity @e[tag=legendS,distance=..500] run function minilegends:structure_spawns/legendS/spawn
execute as @a at @s if predicate minilegends:near_monument unless entity @e[tag=legendC,distance=..500] run function minilegends:structure_spawns/legendC/spawn