# Author: SirSheepe

data modify storage shp_speedrun_records temp set value []

scoreboard players operation index shp_data = @s shp_player_id
execute if score index shp_data matches 1.. run function speedrun:data/fetch_entry_iterate

