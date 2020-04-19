# Author: SirSheepe

data modify storage shp_speedrun_records temp_nums append from storage shp_speedrun_records plr.splits[0]
data remove storage shp_speedrun_records plr.splits[0]

execute store result score #fetch shp_p_best_time run data get storage shp_speedrun_records temp_nums[-1] 1
scoreboard players operation @s shp_p_best_time += #fetch shp_p_best_time

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/sum_best