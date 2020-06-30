# Author: SirSheepe

data modify storage shp_speedrun_records data[-1].splits append value 2147483647.0d

scoreboard players remove index3 shp_data 1
execute if score index3 shp_data matches 1.. run function speedrun:data/add_entry_iterate