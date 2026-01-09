# Check all structures/biomes for boss spawns
# Legend Z - near mansion
execute as @a at @s if predicate minilegends:near_mansion unless entity @e[tag=rein,distance=..500] run function minilegends:structure_spawns/legendz/spawn

# Legend S - near outpost
execute as @a at @s if predicate minilegends:near_outpost unless entity @e[tag=legends,distance=..500] run function minilegends:structure_spawns/legends/spawn

# Legend C - in desert at night (rare - 1% chance per check)
execute as @a at @s if predicate minilegends:in_desert unless entity @e[tag=legendc,distance=..500] run function minilegends:structure_spawns/legendc/check