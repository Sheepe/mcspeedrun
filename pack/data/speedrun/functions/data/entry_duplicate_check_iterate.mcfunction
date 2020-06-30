# Author: SirSheepe

data modify storage shp_speedrun_records temp1 append from storage shp_speedrun_records leaderboard[0]
data remove storage shp_speedrun_records leaderboard[0]

data modify storage minecraft:shp_speedrun_records temp2 set from storage minecraft:shp_speedrun_records temp[-1].name
execute store success score #dupe shp_data run data modify storage minecraft:shp_speedrun_records temp2 set from storage minecraft:shp_speedrun_records temp1[-1].name
scoreboard players operation #duplicate shp_data -= #dupe shp_data
scoreboard players add #duplicate shp_data 1

scoreboard players remove index1 shp_data 1
execute if score index1 shp_data matches 1.. run function speedrun:data/entry_duplicate_check_iterate

