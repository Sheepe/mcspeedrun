# Author: SirSheepe
# Fetches the best time for the current split

data modify storage shp_speedrun_records temp set value []

scoreboard players operation index shp_data = @s shp_player_id
execute if score index shp_data matches 1.. run function speedrun:data/fetch_best_iterate

data modify storage shp_speedrun_records plr set from storage shp_speedrun_records data[0]
data remove storage shp_speedrun_records data[0]

execute store result score @s shp_best_time run data get storage shp_speedrun_records plr.pb

data modify storage shp_speedrun_records temp_nums set value []

scoreboard players operation index shp_data = @s shp_cur_split
execute if score index shp_data matches 1.. run function speedrun:data/fetch_best_iterate_second

execute store result score @s shp_b_split_time run data get storage shp_speedrun_records plr.splits[0]

data modify storage shp_speedrun_records plr.splits prepend from storage shp_speedrun_records temp_nums[]
data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records plr
data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records temp[]

data remove storage shp_speedrun_records plr
data remove storage shp_speedrun_records temp
data remove storage shp_speedrun_records temp_nums