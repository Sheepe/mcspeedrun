# Author: SirSheepe

data modify storage minecraft:shp_speedrun_coursedata temp set value []
data modify storage minecraft:shp_speedrun_records temp1 set value []

scoreboard players set #sum shp_data 0

execute store result score index shp_data run data get storage minecraft:shp_speedrun_coursedata current
scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/private/tell_times_iterate

data modify storage minecraft:shp_speedrun_records data[0].splits prepend from storage minecraft:shp_speedrun_records temp1[]
data remove storage sminecraft:hp_speedrun_records temp1

data modify storage minecraft:shp_speedrun_coursedata current prepend from storage minecraft:shp_speedrun_coursedata temp[]
data remove storage minecraft:shp_speedrun_coursedata temp

