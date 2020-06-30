# Author: SirSheepe

data remove storage minecraft:shp_speedrun_records fetch
data modify storage shp_speedrun_records temp set value []

scoreboard players operation index shp_data = γcurrent shp_player_id
execute if score index shp_data matches 1.. run function speedrun:data/fetch_max_bounded_pb_iterate

data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records temp[]
data remove storage shp_speedrun_records temp
