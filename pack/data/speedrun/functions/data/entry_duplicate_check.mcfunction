# Author: SirSheepe

data modify storage shp_speedrun_records temp1 set value []

scoreboard players set #duplicate shp_data 0

execute store result score index1 shp_data run data get storage minecraft:shp_speedrun_records leaderboard
execute if score index1 shp_data matches 1.. run function speedrun:data/entry_duplicate_check_iterate

data modify storage shp_speedrun_records leaderboard prepend from storage shp_speedrun_records temp1[]
data remove storage shp_speedrun_records temp1
data remove storage shp_speedrun_records temp2