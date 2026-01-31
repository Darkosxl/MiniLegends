# ============================================
# KINGSLAYER STEAL - Makes target drop random equipment
# Called from kingslayer_hit.mcfunction
# Executes as and at the target entity
# ============================================

# Pick random slot (1=head, 2=chest, 3=legs, 4=feet, 5=mainhand, 6=offhand)
scoreboard players set #steal_slot ml.random 0
execute store result score #steal_slot ml.random run random value 1..6

# Create a temporary item entity to copy the equipment to
summon item ~ ~0.5 ~ {Item:{id:"minecraft:stone",count:1},Tags:["stolen_equip"],PickupDelay:0}

# Copy the item from the entity's equipment slot to the item entity
execute if score #steal_slot ml.random matches 1 run data modify entity @e[type=item,tag=stolen_equip,limit=1,sort=nearest] Item set from entity @s equipment.head
execute if score #steal_slot ml.random matches 2 run data modify entity @e[type=item,tag=stolen_equip,limit=1,sort=nearest] Item set from entity @s equipment.chest
execute if score #steal_slot ml.random matches 3 run data modify entity @e[type=item,tag=stolen_equip,limit=1,sort=nearest] Item set from entity @s equipment.legs
execute if score #steal_slot ml.random matches 4 run data modify entity @e[type=item,tag=stolen_equip,limit=1,sort=nearest] Item set from entity @s equipment.feet
execute if score #steal_slot ml.random matches 5 run data modify entity @e[type=item,tag=stolen_equip,limit=1,sort=nearest] Item set from entity @s equipment.mainhand
execute if score #steal_slot ml.random matches 6 run data modify entity @e[type=item,tag=stolen_equip,limit=1,sort=nearest] Item set from entity @s equipment.offhand

# Clear the slot from the entity
execute if score #steal_slot ml.random matches 1 run item replace entity @s armor.head with minecraft:air
execute if score #steal_slot ml.random matches 2 run item replace entity @s armor.chest with minecraft:air
execute if score #steal_slot ml.random matches 3 run item replace entity @s armor.legs with minecraft:air
execute if score #steal_slot ml.random matches 4 run item replace entity @s armor.feet with minecraft:air
execute if score #steal_slot ml.random matches 5 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #steal_slot ml.random matches 6 run item replace entity @s weapon.offhand with minecraft:air

# Kill the item entity if it still has stone (empty slot was selected)
execute as @e[type=item,tag=stolen_equip,nbt={Item:{id:"minecraft:stone"}}] run kill @s

# Remove temp tag from the item (so it becomes normal loot)
tag @e[type=item,tag=stolen_equip] remove stolen_equip

# Visual and sound effect
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:entity.item.break master @a ~ ~ ~ 1 0.8

# Message to nearby players
execute as @a[distance=..20] run tellraw @s [{"text":"[Kingslayer] ","color":"gold"},{"text":"Equipment stolen!","color":"yellow"}]
