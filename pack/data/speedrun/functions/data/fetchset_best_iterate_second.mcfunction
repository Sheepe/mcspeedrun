# Author: SirSheepe

data modify storage shp_speedrun_records temp_nums append from storage shp_speedrun_records plr.splits[0]
data remove storage shp_speedrun_records plr.splits[0]

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/fetchset_best_iterate_second