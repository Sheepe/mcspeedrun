# Author: SirSheepe

scoreboard players reset * shp_player_id
scoreboard players set γcurrent shp_player_id 0
data modify storage shp_speedrun_records data set value []
function core:init
function speedrun:tools/clear/splits
function player:assign_ids
clear @s minecraft:carrot_on_a_stick{SplitItem:1b} 0
clear @s minecraft:writable_book{SplitItem:1b} 0
clear @s minecraft:written_book{SplitItem:1b} 0
scoreboard players reset * shp_split_time
scoreboard players reset * shp_global_time
scoreboard players reset * shp_best_time
scoreboard players reset * shp_b_split_time
scoreboard players reset * shp_p_best_time
tag @a remove runner
tag @a remove active
title @a subtitle ""
title @a actionbar ""
title @a title ""
#function speedrun:data/clear
function core:remove_lobby
function speedrun:leaderboard/remove