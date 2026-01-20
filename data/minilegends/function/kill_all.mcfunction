# ============================================
# KILL ALL - Admin command to reset everything
# ============================================

# 1. Kill all boss entities
kill @e[tag=minilegends_boss]
kill @e[tag=miniboss]
kill @e[tag=terror_gauntlet]
kill @e[tag=kira_warden]
kill @e[tag=legende_rider]

# 2. Remove all boss bars (Force clear)
bossbar remove minilegends:legendk
bossbar remove minilegends:legende
bossbar remove minilegends:legendt
bossbar remove minilegends:legendt_gauntlet
bossbar remove minilegends:legendc
bossbar remove minilegends:rein
bossbar remove minilegends:legends1
bossbar remove minilegends:legends2

# 3. Reset Scoreboards/State
scoreboard players set #terror_phase ml.random 0
scoreboard players set #terror_kills ml.random 0
scoreboard players set #terror_startup ml.random 0
scoreboard players set #kira_level ml.random 0

# 4. Clear negative effects from players
effect clear @a darkness
effect clear @a levitation
effect clear @a blindness
effect clear @a mining_fatigue

# 5. Notification
tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"All active bosses have been killed and state reset.","color":"green"}]