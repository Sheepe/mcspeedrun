# Author: SirSheepe

data modify storage shp_speedrun_records data append value {pb:1000000.0d,splits:[]}

scoreboard players operation index2 shp_data > @e[type=minecraft:armor_stand,tag=split] shp_split_id
execute if score index2 shp_data matches 1.. run function speedrun:data/clear_iterate_second