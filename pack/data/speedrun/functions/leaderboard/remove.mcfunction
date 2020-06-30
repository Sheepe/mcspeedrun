# Author: SirSheepe

execute at @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_base] run forceload remove ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard]
