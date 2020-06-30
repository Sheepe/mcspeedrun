# Author: SirSheepe

data modify storage shp_speedrun_records temp append from storage shp_speedrun_records data[0]
data remove storage shp_speedrun_records data[0]

# debug | tellraw @a {"nbt":"temp[-1]","storage":"minecraft:shp_speedrun_records"}

execute store result score #temp shp_data run data get storage minecraft:shp_speedrun_records temp[-1].pb

execute if score #temp shp_data >= upper_spd_limit shp_data if score #temp shp_data <= #temp_max shp_data run function speedrun:data/entry_duplicate_check
execute if score #temp shp_data >= upper_spd_limit shp_data if score #temp shp_data <= #temp_max shp_data unless score #temp shp_data matches 2147483647 if score #duplicate shp_data matches 0 run function speedrun:data/fetch_max_bounded_pb_iterate_subroutine

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/fetch_max_bounded_pb_iterate
