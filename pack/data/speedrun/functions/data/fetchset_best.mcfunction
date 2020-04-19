# Author: SirSheepe
# Fetches the best time for the current split

data modify storage shp_speedrun_records temp set value []

scoreboard players operation index shp_data = @s shp_player_id
execute if score index shp_data matches 1.. run function speedrun:data/fetchset_best_iterate

data modify storage shp_speedrun_records plr set from storage shp_speedrun_records data[0]
data remove storage shp_speedrun_records data[0]

execute store result score @s shp_best_time run data get storage shp_speedrun_records plr.pb

data modify storage shp_speedrun_records temp_nums set value []

scoreboard players operation index shp_data = @s shp_cur_split
execute if score index shp_data matches 1.. run function speedrun:data/fetchset_best_iterate_second

execute store result score @s shp_b_split_time run data get storage shp_speedrun_records plr.splits[0]

execute store result score #prior shp_data run data get storage shp_speedrun_records temp_nums[-1]
execute if score #prior shp_data matches 0 run scoreboard players set #prior shp_data 2147483647
execute if score #prior shp_data > @s shp_split_time store result storage shp_speedrun_records temp_num double 1 run scoreboard players get @s shp_split_time
execute unless score #prior shp_data > @s shp_split_time store result storage shp_speedrun_records temp_num double 1 run scoreboard players get #prior shp_data
data modify storage shp_speedrun_records temp_nums append from storage shp_speedrun_records temp_num
data remove storage shp_speedrun_records temp_nums[-2]

scoreboard players operation index shp_data = max_split shp_cur_split
scoreboard players operation index shp_data -= @s shp_cur_split
#scoreboard players add index shp_data 1
scoreboard players operation @s shp_p_best_time = @s shp_global_time
execute unless score @s shp_cur_split = max_split shp_cur_split if score index shp_data matches 1.. run function speedrun:data/sum_best

execute store result storage shp_speedrun_records temp_num double 1 run scoreboard players get @s shp_global_time
execute if score @s shp_cur_split = max_split shp_cur_split if score @s shp_global_time < @s shp_best_time run data modify storage shp_speedrun_records plr.pb set from storage shp_speedrun_records temp_num

data modify storage shp_speedrun_records plr.splits prepend from storage shp_speedrun_records temp_nums[]
data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records plr
data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records temp[]

data remove storage shp_speedrun_records plr
data remove storage shp_speedrun_records temp
data remove storage shp_speedrun_records temp_nums
data remove storage shp_speedrun_records temp_num