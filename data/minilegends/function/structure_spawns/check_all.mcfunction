# Check all structures for boss spawns
execute as @a at @s if predicate minilegends:near_mansion unless entity @e[tag=rein,distance=..500] run function minilegends:structure_spawns/legendz/spawn
execute as @a at @s if predicate minilegends:near_outpost unless entity @e[tag=legends,distance=..500] run function minilegends:structure_spawns/legends/spawn
# execute as @a at @s if predicate minilegends:near_monument unless entity @e[tag=legendc,distance=..500] run function minilegends:structure_spawns/legendc/spawn