# Death function for Krapfen
tellraw @a [{"text":"[","color":"gray"},{"text":"Krapfen","color":"gold"},{"text":"] ","color":"gray"},{"text":"You... punks...","color":"yellow"}]
playsound minecraft:entity.piglin.death master @a ~ ~ ~ 1 0.5
particle minecraft:soul 0 0 0 0 0 0 0 1

# Clear bossbar
bossbar remove minilegends:krapfen
scoreboard players set #krapfen_phase ml.random -1

# Krapfen drops his sword via drop_chances in the summon command
# No need to manually spawn it here - he should drop it automatically on death
