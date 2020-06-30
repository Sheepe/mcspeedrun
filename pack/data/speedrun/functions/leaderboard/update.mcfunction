# Author: SirSheepe

data modify storage minecraft:shp_speedrun_records leaderboard set value []

scoreboard players set upper_spd_limit shp_data 0
scoreboard players set #temp_max shp_data 2147483647

execute as @e[type=minecraft:area_effect_cloud,tag=shp_place] run data modify entity @s CustomName set value '{"text":"-","color":"white","bold":"true"}'

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 1
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_1] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 2
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_2] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 3
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_3] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 4
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_4] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 5
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_5] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 6
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_6] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 7
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_7] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 8
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_8] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 9
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_9] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

function speedrun:data/fetch_max_bounded_pb
scoreboard players set #place shp_data 10
execute as @e[type=minecraft:area_effect_cloud,tag=shp_leaderboard,tag=shp_place_10] if data storage minecraft:shp_speedrun_records fetch run function speedrun:leaderboard/apply_entry

data remove storage minecraft:shp_speedrun_records fetch
data remove storage minecraft:shp_speedrun_records leaderboard