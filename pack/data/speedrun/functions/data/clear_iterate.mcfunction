# Author: SirSheepe

data modify storage shp_speedrun_records temp append from storage shp_speedrun_records data[0]
data remove storage shp_speedrun_records data[0]

data modify storage minecraft:shp_speedrun_records temp[-1] merge value {pb:2147483647.0d,splits:[]}

scoreboard players operation index2 shp_data > @e[type=minecraft:armor_stand,tag=split] shp_split_id
execute if score index2 shp_data matches 1.. run function speedrun:data/clear_iterate_second

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/clear_iterate