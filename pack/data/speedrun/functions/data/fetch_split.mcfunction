# Author: SirSheepe

data modify storage minecraft:shp_speedrun_coursedata temp set value []

scoreboard players operation index shp_data = @s shp_cur_split
scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/fetch_split_iterate

data modify storage minecraft:shp_speedrun_coursedata split_fetch set from storage minecraft:shp_speedrun_coursedata current[0]

data modify storage minecraft:shp_speedrun_coursedata current prepend from storage minecraft:shp_speedrun_coursedata temp[]
data remove storage minecraft:shp_speedrun_coursedata temp