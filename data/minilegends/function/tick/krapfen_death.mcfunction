# Death function for Krapfen
tellraw @a [{"text":"[","color":"gray"},{"text":"Krapfen","color":"gold"},{"text":"] ","color":"gray"},{"text":"You... punks...","color":"yellow"}]
playsound minecraft:entity.piglin.death master @a ~ ~ ~ 1 0.5
particle minecraft:soul 0 0 0 0 0 0 0 1

# Clear bossbar
bossbar remove minilegends:krapfen
scoreboard players set #krapfen_phase ml.random -1

# Drop loot (The Kingslayer)
summon item ~ ~ ~ {Item:{id:"minecraft:golden_sword",Count:1b,tag:{display:{Name:'{"text":"Kingslayer","color":"gold"}',Lore:['{"text":"King Stealer I","color":"gray"}']},KingStealer:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:3s},{id:"minecraft:sharpness",lvl:10s}],AttributeModifiers:[{AttributeName:"minecraft:generic.attack_range",Name:"generic.attack_range",Amount:11,Operation:0,UUID:[I;1,2,3,9],Slot:"mainhand"}]}}}
