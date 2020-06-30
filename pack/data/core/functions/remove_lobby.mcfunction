# Author: SirSheepe

execute at @e[type=minecraft:armor_stand,tag=shp_lobby_spawn] run forceload remove ~ ~
kill @e[type=minecraft:armor_stand,tag=shp_lobby_spawn]

execute as @a run function speedrun:tools/book