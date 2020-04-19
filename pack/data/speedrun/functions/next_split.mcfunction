# Author: SirSheepe

execute if score #next_split shp_cur_split = max_split shp_cur_split run function speedrun:finish
execute if score #next_split shp_cur_split < max_split shp_cur_split run function speedrun:split/time