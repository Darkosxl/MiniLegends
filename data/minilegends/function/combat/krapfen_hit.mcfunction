# Revoke advancement so it can trigger again
advancement revoke @s only minilegends:combat/krapfen_hit

# Apply Decaying VIII (Wither 8) for 2 seconds
effect give @s minecraft:wither 2 7

# King Stealer Ability: 40% chance to drop armor
# We use a random score to determine if it triggers
scoreboard players set #krapfen_rng ml.random 0
execute store result score #krapfen_rng ml.random run random value 1..100

# If <= 40, steal armor
execute if score #krapfen_rng ml.random matches ..40 run function minilegends:combat/krapfen_steal_armor
