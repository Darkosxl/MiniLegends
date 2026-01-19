# ============================================
# TNT RAIN - Random TNT falls from the sky
# Uses spreadplayers to get random position
# ============================================

# Summon marker, spread it randomly in arena, summon TNT there, kill marker
summon armor_stand -50000 180 -50000 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["tnt_pos"]}
spreadplayers -50000 -50000 0 40 false @e[tag=tnt_pos,limit=1]
execute at @e[tag=tnt_pos,limit=1] run summon tnt ~ 200 ~ {fuse:80}
kill @e[tag=tnt_pos]

# Ominous sound
playsound minecraft:block.note_block.bass master @a -50000 160 -50000 0.5 0.5
