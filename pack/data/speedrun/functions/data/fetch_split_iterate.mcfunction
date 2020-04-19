# Author: SirSheepe

data modify storage minecraft:shp_speedrun_coursedata temp append from storage minecraft:shp_speedrun_coursedata current[0]
data remove storage minecraft:shp_speedrun_coursedata current[0]

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/fetch_split_iterate