# ============================================
# MINI S - reiN's Archer Companion
# Skeleton with insane knockback bow + super speed
# ============================================

# Summon skeleton with bow and armor (1.21 format) - no visible name
summon skeleton ~ ~ ~ {CustomName:'"S"',CustomNameVisible:0b,PersistenceRequired:1b,Tags:["miniboss","minis","rein_minion"],attributes:[{id:"minecraft:max_health",base:60},{id:"minecraft:movement_speed",base:0.4}],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:punch":20,"minecraft:power":10}}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12,"minecraft:thorns":4}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":12}}},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{"minecraft:protection":7,"minecraft:feather_falling":5}}}},active_effects:[{id:"minecraft:speed",amplifier:2,duration:-1,show_particles:false}]}

# Set health to max after spawn
execute as @e[type=skeleton,tag=minis,limit=1,sort=nearest] run data modify entity @s Health set value 60f