# Author: SirSheepe

scoreboard players add @s shp_cur_split 1

scoreboard players operation #split_time shp_b_split_time = @s shp_b_split_time
scoreboard players operation @s shp_last_split = @s shp_global_time
scoreboard players operation #split_save shp_b_split_time = @s shp_split_time

function speedrun:data/fetchset_best

scoreboard players operation loss_delta shp_global_time = #split_save shp_b_split_time
scoreboard players operation loss_delta shp_global_time -= #split_time shp_b_split_time

execute if score loss_delta shp_global_time matches ..-1 run scoreboard players set loss_save shp_global_time 1
execute if score loss_delta shp_global_time matches 0.. run scoreboard players set loss_save shp_global_time 0
execute if score loss_delta shp_global_time matches ..-1 run scoreboard players operation loss_delta shp_global_time *= #minus shp_data

scoreboard players operation ms0 shp_global_time = loss_delta shp_global_time
scoreboard players operation ms0 shp_global_time %= twenty shp_data
scoreboard players operation ms0 shp_global_time *= five shp_data

scoreboard players operation s0 shp_global_time = loss_delta shp_global_time
scoreboard players operation s0 shp_global_time /= twenty shp_data

scoreboard players operation m0 shp_global_time = s0 shp_global_time

scoreboard players operation s0 shp_global_time %= sixty shp_data
scoreboard players operation m0 shp_global_time /= sixty shp_data

function speedrun:split/print

scoreboard players set @s shp_split_time 0

title @s times 0 40 2

execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches ..9 run title @s subtitle [{"text":"+","color":"red"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches 10.. run title @s subtitle [{"text":"+","color":"red"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches ..9 run title @s subtitle [{"text":"-","color":"green"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches 10.. run title @s subtitle [{"text":"-","color":"green"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms0","objective":"shp_global_time"}}]

execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches ..9 run title @s subtitle [{"text":"+","color":"red"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches 10.. run title @s subtitle [{"text":"+","color":"red"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches ..9 run title @s subtitle [{"text":"-","color":"green"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches 10.. run title @s subtitle [{"text":"-","color":"green"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms0","objective":"shp_global_time"}}]

execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches ..9 run title @s subtitle [{"text":"+","color":"red"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":0"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches 10.. run title @s subtitle [{"text":"+","color":"red"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":0"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches ..9 run title @s subtitle [{"text":"-","color":"green"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":0"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms0","objective":"shp_global_time"}}]
execute unless score #split_time shp_b_split_time matches 2147483647 if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches 10.. run title @s subtitle [{"text":"-","color":"green"},{"score":{"name":"m0","objective":"shp_global_time"}},{"text":":0"},{"score":{"name":"s0","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms0","objective":"shp_global_time"}}]

title @s title ""

execute if score loss_save shp_global_time matches ..0 at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000 0.8
execute if score loss_save shp_global_time matches 1.. at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000 1.


