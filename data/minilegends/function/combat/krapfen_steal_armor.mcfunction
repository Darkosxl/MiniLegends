# Steal a random piece of armor
# 1 = Helmet, 2 = Chestplate, 3 = Leggings, 4 = Boots

scoreboard players set #armor_slot ml.random 0
execute store result score #armor_slot ml.random run random value 1..4

# Drop Helmet
execute if score #armor_slot ml.random matches 1 unless data entity @s Inventory[{Slot:103b}] run return 0
# If slot was empty or logic continued (unlikely with return but just in case of future edits), dropping logic:
# Actually 'item replace ... with air' deletes it. The user said "drop pieces of their armour".
# So we should probably spawn the item at the player's location before clearing it.
# However, we can't easily "get" the item and spawn it without a complex loot table or NBT copying shulker box trick.
# "Drop" usually implies it falls off.
# Simplest way: /loot spawn ~ ~ ~ mine ~ ~ ~ mainhand? No.
# We can use /loot replace block or similar.
# Or just clear it and say "Stolen!".
# But "drop" means the item should be on the ground.

# Let's try to copy the item to the ground.
# We can summon an item entity and copy the NBT from the player's inventory to the item entity.

# Helmet
execute if score #armor_slot ml.random matches 1 if data entity @s Inventory[{Slot:103b}] run summon item ~ ~ ~ {Tags:["stolen_armor"]}
execute if score #armor_slot ml.random matches 1 if data entity @s Inventory[{Slot:103b}] run data modify entity @e[type=item,tag=stolen_armor,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:103b}]
execute if score #armor_slot ml.random matches 1 if data entity @s Inventory[{Slot:103b}] run item replace entity @s armor.head with minecraft:air

# Chestplate
execute if score #armor_slot ml.random matches 2 if data entity @s Inventory[{Slot:102b}] run summon item ~ ~ ~ {Tags:["stolen_armor"]}
execute if score #armor_slot ml.random matches 2 if data entity @s Inventory[{Slot:102b}] run data modify entity @e[type=item,tag=stolen_armor,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:102b}]
execute if score #armor_slot ml.random matches 2 if data entity @s Inventory[{Slot:102b}] run item replace entity @s armor.chest with minecraft:air

# Leggings
execute if score #armor_slot ml.random matches 3 if data entity @s Inventory[{Slot:101b}] run summon item ~ ~ ~ {Tags:["stolen_armor"]}
execute if score #armor_slot ml.random matches 3 if data entity @s Inventory[{Slot:101b}] run data modify entity @e[type=item,tag=stolen_armor,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:101b}]
execute if score #armor_slot ml.random matches 3 if data entity @s Inventory[{Slot:101b}] run item replace entity @s armor.legs with minecraft:air

# Boots
execute if score #armor_slot ml.random matches 4 if data entity @s Inventory[{Slot:100b}] run summon item ~ ~ ~ {Tags:["stolen_armor"]}
execute if score #armor_slot ml.random matches 4 if data entity @s Inventory[{Slot:100b}] run data modify entity @e[type=item,tag=stolen_armor,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:100b}]
execute if score #armor_slot ml.random matches 4 if data entity @s Inventory[{Slot:100b}] run item replace entity @s armor.feet with minecraft:air

# Cleanup tag
tag @e[tag=stolen_armor] remove stolen_armor

# Message
tellraw @s [{"text":"[","color":"gray"},{"text":"Krapfen","color":"gold"},{"text":"] ","color":"gray"},{"text":"Yoink! That's mine now!","color":"yellow"}]
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
