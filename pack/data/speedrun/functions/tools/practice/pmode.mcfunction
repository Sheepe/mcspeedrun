# Author: SirSheepe

execute if score @s shp_pmode_tr matches 1 run function speedrun:tools/practice/set_normal_mode
execute if score @s shp_pmode_tr matches 2 run function speedrun:tools/practice/set_reset_mode

scoreboard players set @a shp_pmode_tr 0

function speedrun:tools/practice/book