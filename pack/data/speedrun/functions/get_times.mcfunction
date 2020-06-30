# Author: SirSheepe

tellraw @s {"text":"---------------------------","color":"gray","bold":"true"}
tellraw @s [{"text":"Times for ","color":"light_gray"},{"selector":"@s","color":"yellow"},{"text":":","color":"yellow"}]

# Fetch the player's data
function speedrun:data/fetch_entry

execute store result score #temp shp_data run data get storage minecraft:shp_speedrun_records data[0].pb

scoreboard players operation ms shp_global_time = #temp shp_data
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = #temp shp_data
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

execute if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run tellraw @s [{"text":"Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run tellraw @s [{"text":"Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run tellraw @s [{"text":"Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run tellraw @s [{"text":"Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]

tellraw @s {"text":"Sections: ","color":"gold"}

function speedrun:data/private/tell_times

scoreboard players operation ms shp_global_time = #sum shp_data
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = #sum shp_data
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

execute if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run tellraw @s [{"text":"Sum of Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run tellraw @s [{"text":"Sum of Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run tellraw @s [{"text":"Sum of Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run tellraw @s [{"text":"Sum of Best: ","color":"gold"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green"}]

tellraw @s {"text":"---------------------------","color":"gray","bold":"true"}

# Put the data back

data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records temp[]
data remove storage shp_speedrun_records temp
