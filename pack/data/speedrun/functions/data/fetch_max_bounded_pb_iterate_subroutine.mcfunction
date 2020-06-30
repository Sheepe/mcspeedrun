# Author: SirSheepe

scoreboard players operation #temp_max shp_data = #temp shp_data
data modify storage minecraft:shp_speedrun_records fetch set from storage minecraft:shp_speedrun_records temp[-1]

# debug | tellraw @a {"nbt":"temp[-1]","storage":"shp_speedrun_records"}