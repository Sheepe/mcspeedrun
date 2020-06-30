# Author: SirSheepe

function speedrun:data/fetch_split

scoreboard players operation overall_loss shp_global_time = @s shp_p_best_time
scoreboard players operation overall_loss shp_global_time -= @s shp_best_time

scoreboard players operation loss_delta shp_global_time = @s shp_global_loss
scoreboard players operation loss_delta shp_global_time -= overall_loss shp_global_time

scoreboard players operation @s shp_global_loss = overall_loss shp_global_time

scoreboard players operation split_loss shp_global_time = @s shp_split_time
scoreboard players operation split_loss shp_global_time -= #split_time shp_b_split_time

scoreboard players operation ms shp_global_time = @s shp_split_time
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = @s shp_split_time
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

execute unless score #split_time shp_b_split_time matches 2147483647 run function speedrun:split/print_with_delta
execute if score #split_time shp_b_split_time matches 2147483647 run function speedrun:split/print_without_delta