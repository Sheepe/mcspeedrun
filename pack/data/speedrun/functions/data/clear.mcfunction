# Author: SirSheepe
# Clears everyone's data. Isn't that fun?

data merge storage shp_speedrun_records {data:[]}
scoreboard players operation index shp_data = γcurrent shp_player_id

execute if score index shp_data matches 1.. run function speedrun:data/clear_iterate

function speedrun:leaderboard/update