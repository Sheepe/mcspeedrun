# Author: SirSheepe

data modify storage shp_speedrun_records temp append from storage shp_speedrun_records data[0]
data remove storage shp_speedrun_records data[0]

data modify storage shp_speedrun_records temp[-1].splits append value 2147483647.0d

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/add_null_split_iterate