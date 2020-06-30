# Author: SirSheepe

scoreboard players operation ms shp_global_time = #temp_max shp_data
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = #temp_max shp_data
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

execute if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run data modify block 0 1 29999983 Text1 set value '[{"score":{"name":"#place","objective":"shp_data"},"color":"#ffc43b"},{"text":". ","color":"#ffc43b"},{"nbt":"fetch.name","storage":"minecraft:shp_speedrun_records","color":"white"},{"text":" - ","color":"dark_gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"s","objective":"shp_global_time"},"color":"yellow"},{"text":".0","color":"yellow"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"yellow"}]'
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run data modify block 0 1 29999983 Text1 set value '[{"score":{"name":"#place","objective":"shp_data"},"color":"#ffc43b"},{"text":". ","color":"#ffc43b"},{"nbt":"fetch.name","storage":"minecraft:shp_speedrun_records","color":"white"},{"text":" - ","color":"dark_gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"s","objective":"shp_global_time"},"color":"yellow"},{"text":".0","color":"yellow"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"yellow"}]'
execute if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run data modify block 0 1 29999983 Text1 set value '[{"score":{"name":"#place","objective":"shp_data"},"color":"#ffc43b"},{"text":". ","color":"#ffc43b"},{"nbt":"fetch.name","storage":"minecraft:shp_speedrun_records","color":"white"},{"text":" - ","color":"dark_gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"s","objective":"shp_global_time"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"yellow"}]'
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run data modify block 0 1 29999983 Text1 set value '[{"score":{"name":"#place","objective":"shp_data"},"color":"#ffc43b"},{"text":". ","color":"#ffc43b"},{"nbt":"fetch.name","storage":"minecraft:shp_speedrun_records","color":"white"},{"text":" - ","color":"dark_gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"s","objective":"shp_global_time"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"yellow"}]'

data modify entity @s CustomName set from block 0 1 29999983 Text1

scoreboard players operation upper_spd_limit shp_data = #temp_max shp_data
scoreboard players set #temp_max shp_data 2147483647
data modify storage minecraft:shp_speedrun_records leaderboard append from storage minecraft:shp_speedrun_records fetch