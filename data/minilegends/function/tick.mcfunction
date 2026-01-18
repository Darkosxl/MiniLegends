# ============================================
# TICK - Runs every game tick (20/second)
# ============================================

# === TIMER: Check structures every 5 seconds ===
scoreboard players add #global ml.timer 1
execute if score #global ml.timer matches 100.. run function minilegends:structure_spawns/check_all
execute if score #global ml.timer matches 100.. run scoreboard players set #global ml.timer 0

# === SPAWN EGG DETECTION ===
function minilegends:tick/spawn_eggs

# === BOSS TICK LOGIC ===
function minilegends:tick/legendz
function minilegends:tick/legends
function minilegends:tick/legendc
function minilegends:tick/legende
function minilegends:tick/legendk
function minilegends:tick/legendt

# === MYSTERY CHEST DETECTION ===
function minilegends:tick/mystery_chest
