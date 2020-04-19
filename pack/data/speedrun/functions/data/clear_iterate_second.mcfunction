# Author: SirSheepe

data modify storage shp_speedrun_records data[-1].splits append value 1000000.0d

scoreboard players remove index2 shp_data 1
execute if score index2 shp_data matches 1.. run function speedrun:data/clear_iterate_second