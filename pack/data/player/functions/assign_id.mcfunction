# Author: SirSheepe

scoreboard players operation @s shp_player_id = γcurrent shp_player_id
scoreboard players add γcurrent shp_player_id 1

tp @s @e[type=minecraft:armor_stand,tag=shp_lobby_spawn,limit=1]

function speedrun:data/add_entry