# Author: SirSheepe

execute at @e[type=minecraft:armor_stand,tag=shp_lobby_spawn] run forceload remove ~ ~
kill @e[type=minecraft:armor_stand,tag=shp_lobby_spawn]

summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["shp_lobby_spawn"]}
forceload add ~ ~

tp @e[type=minecraft:armor_stand,tag=shp_lobby_spawn] @s

execute as @a run function speedrun:tools/book