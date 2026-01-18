# ============================================
# LEGEND K TICK - Kira boss logic
# HP thresholds: 85%(1700), 70%(1400), 55%(1100), 30%(600), 2%(40)
# Skills activate and persist after threshold
# ============================================

# === BOSS BAR UPDATE ===
execute store result bossbar minilegends:legendk value run data get entity @e[tag=legendk,limit=1] Health
bossbar set minilegends:legendk players @a

# === DEATH CHECK ===
execute unless entity @e[tag=legendk] if score #kira_level ml.random matches 1.. run function minilegends:tick/legendk_death
execute unless entity @e[tag=legendk] run bossbar remove minilegends:legendk
execute unless entity @e[tag=legendk] run scoreboard players set #kira_level ml.random 0

# === TIMER INCREMENT ===
execute as @e[tag=legendk] run scoreboard players add @s ml.timer 1

# === HP THRESHOLD CHECKS ===
# Store current HP
execute as @e[tag=legendk] store result score @s ml.random run data get entity @s Health

# Level 1: Fire Gates (at 85% = 1700 HP)
execute as @e[tag=legendk] if score @s ml.random matches ..1700 if score #kira_level ml.random matches 0 run function minilegends:tick/legendk_level1

# Level 2: Army of Hell (at 70% = 1400 HP)
execute as @e[tag=legendk] if score @s ml.random matches ..1400 if score #kira_level ml.random matches 1 run function minilegends:tick/legendk_level2

# Level 3: ZA WARUDO (at 55% = 1100 HP)
execute as @e[tag=legendk] if score @s ml.random matches ..1100 if score #kira_level ml.random matches 2 run function minilegends:tick/legendk_level3

# Level 4: Power of Friendship (at 30% = 600 HP)
execute as @e[tag=legendk] if score @s ml.random matches ..600 if score #kira_level ml.random matches 3 run function minilegends:tick/legendk_level4

# Level 5: My Story (at 2% = 40 HP)
execute as @e[tag=legendk] if score @s ml.random matches ..40 if score #kira_level ml.random matches 4 run function minilegends:tick/legendk_level5

# === ACTIVE SKILL EFFECTS (run continuously after unlocked) ===

# Fire Gates: Random fire every 3 seconds
execute if score #kira_level ml.random matches 1.. as @e[tag=legendk] at @s if score @s ml.timer matches 60 run function minilegends:tick/legendk_fire
execute if score #kira_level ml.random matches 1.. as @e[tag=legendk] at @s if score @s ml.timer matches 120 run function minilegends:tick/legendk_fire

# Army of Hell: Spawners already placed, mobs spawn naturally

# ZA WARUDO: Arrow barrage every 4 seconds
execute if score #kira_level ml.random matches 3.. as @e[tag=legendk] at @s if score @s ml.timer matches 80 run function minilegends:tick/legendk_arrows

# Reset timer at 160
execute as @e[tag=legendk,scores={ml.timer=160..}] run scoreboard players set @s ml.timer 0
