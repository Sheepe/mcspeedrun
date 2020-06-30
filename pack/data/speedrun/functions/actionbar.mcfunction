# Author: SirSheepe

scoreboard players operation overall_loss_z shp_global_time = @s shp_p_best_time
scoreboard players operation overall_loss_z shp_global_time -= @s shp_last_split
scoreboard players operation overall_loss_z shp_global_time -= @s shp_b_split_time
scoreboard players operation overall_loss_z shp_global_time += @s shp_best_time
scoreboard players operation overall_loss_z shp_global_time -= @s shp_global_time

scoreboard players operation ms shp_global_time = @s shp_global_time
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = @s shp_global_time
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

execute if score overall_loss_z shp_global_time matches ..0 if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"red","bold":"true"},{"text":":0","color":"red"},{"score":{"name":"s","objective":"shp_global_time"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"red"}]
execute if score overall_loss_z shp_global_time matches ..0 if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"red","bold":"true"},{"text":":","color":"red"},{"score":{"name":"s","objective":"shp_global_time"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"red"}]
execute if score overall_loss_z shp_global_time matches ..0 if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"red","bold":"true"},{"text":":0","color":"red"},{"score":{"name":"s","objective":"shp_global_time"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"red"}]
execute if score overall_loss_z shp_global_time matches ..0 if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"red","bold":"true"},{"text":":","color":"red"},{"score":{"name":"s","objective":"shp_global_time"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"red"}]

execute if score overall_loss_z shp_global_time matches 1.. if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"true"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score overall_loss_z shp_global_time matches 1.. if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"true"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score overall_loss_z shp_global_time matches 1.. if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"true"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score overall_loss_z shp_global_time matches 1.. if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run title @s actionbar [{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"true"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]