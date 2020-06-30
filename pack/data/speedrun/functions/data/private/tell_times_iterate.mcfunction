# Author: SirSheepe

data modify storage minecraft:shp_speedrun_records temp1 append from storage minecraft:shp_speedrun_records data[0].splits[0]
data remove storage minecraft:shp_speedrun_records data[0].splits[0]

data modify storage minecraft:shp_speedrun_coursedata temp append from storage minecraft:shp_speedrun_coursedata current[0]
data remove storage minecraft:shp_speedrun_coursedata current[0]

execute store result score #temp shp_data run data get storage minecraft:shp_speedrun_records temp1[-1]
scoreboard players operation #sum shp_data += #temp shp_data

scoreboard players operation ms shp_global_time = #temp shp_data
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = #temp shp_data
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

execute if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run tellraw @s [{"text":"- ","color":"gray"},{"nbt":"temp[-1].name","storage":"minecraft:shp_speedrun_coursedata","color":"white"},{"text":": ","color":"gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run tellraw @s [{"text":"- ","color":"gray"},{"nbt":"temp[-1].name","storage":"minecraft:shp_speedrun_coursedata","color":"white"},{"text":": ","color":"gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run tellraw @s [{"text":"- ","color":"gray"},{"nbt":"temp[-1].name","storage":"minecraft:shp_speedrun_coursedata","color":"white"},{"text":": ","color":"gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run tellraw @s [{"text":"- ","color":"gray"},{"nbt":"temp[-1].name","storage":"minecraft:shp_speedrun_coursedata","color":"white"},{"text":": ","color":"gray"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/private/tell_times_iterate