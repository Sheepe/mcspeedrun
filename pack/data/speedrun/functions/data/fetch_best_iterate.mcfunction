# Author: SirSheepe

data modify storage shp_speedrun_records temp append from storage shp_speedrun_records data[0]
data remove storage shp_speedrun_records data[0]

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/fetch_best_iterate