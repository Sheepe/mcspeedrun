# Author: SirSheepe
# Clears everyone's PBs.

data modify storage shp_speedrun_records temp set value []

scoreboard players operation index shp_data = γcurrent shp_player_id
execute if score index shp_data matches 1.. run function speedrun:data/clear_pbs_iterate

data modify storage shp_speedrun_records data prepend from storage shp_speedrun_records temp[]
data remove storage shp_speedrun_records temp

