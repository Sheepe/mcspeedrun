# Author: SirSheepe
# Forcefully resets all splits

kill @e[tag=split]
scoreboard players reset * shp_cur_split
scoreboard players set γcurrent shp_split_id 0

data modify storage shp_speedrun_coursedata current set value []