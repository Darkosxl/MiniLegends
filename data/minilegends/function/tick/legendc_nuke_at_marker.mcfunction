# ============================================
# LEGEND C NUKE AT MARKER - Trigger nuke at explosion location
# ============================================

# Run the nuke at the marker location (where Frigis exploded)
execute at @e[tag=legendc_explosion_marker,limit=1] run function minilegends:tick/legendc_nuke
