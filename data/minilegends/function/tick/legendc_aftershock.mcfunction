# ============================================
# LEGEND C AFTERSHOCK - 30 Fizzling TNT at explosion site
# ============================================

tellraw @a [{"text":"[MiniLegends] ","color":"gold"},{"text":"Aftershocks incoming...","color":"yellow","italic":true}]

# Spawn 30 TNT at the explosion marker location with varying fuses
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~ {fuse:20}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~1 ~ ~ {fuse:25}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-1 ~ ~ {fuse:30}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~1 {fuse:35}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~-1 {fuse:40}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~2 ~ ~ {fuse:22}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-2 ~ ~ {fuse:28}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~2 {fuse:33}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~-2 {fuse:38}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~1 ~ ~1 {fuse:45}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-1 ~ ~1 {fuse:50}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~1 ~ ~-1 {fuse:55}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-1 ~ ~-1 {fuse:60}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~3 ~ ~ {fuse:24}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-3 ~ ~ {fuse:32}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~3 {fuse:42}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~-3 {fuse:48}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~2 ~ ~2 {fuse:26}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-2 ~ ~2 {fuse:36}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~2 ~ ~-2 {fuse:46}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-2 ~ ~-2 {fuse:56}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~4 ~ ~ {fuse:21}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-4 ~ ~ {fuse:31}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~4 {fuse:41}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~ ~-4 {fuse:51}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~3 ~ ~3 {fuse:27}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-3 ~ ~3 {fuse:37}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~3 ~ ~-3 {fuse:47}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~-3 ~ ~-3 {fuse:57}
execute at @e[tag=legendc_explosion_marker,limit=1] run summon tnt ~ ~1 ~ {fuse:65}

# Remove the marker
kill @e[tag=legendc_explosion_marker]
