# Author: SirSheepe

scoreboard players enable @a shp_start_tr
scoreboard players enable @a shp_reset_tr
scoreboard players enable @a shp_pract_tr
scoreboard players enable @a shp_times_tr
scoreboard players enable @a shp_lobby_tr
scoreboard players enable @a shp_skip_tr
scoreboard players enable @a shp_pmode_tr

execute as @a if score @s shp_start_tr matches 1.. run function speedrun:tools/triggers/start_trigger
execute as @a if score @s[tag=!practice] shp_reset_tr matches 1.. run function speedrun:tools/triggers/reset_trigger
execute as @a if score @s[tag=practice] shp_reset_tr matches 1.. run function speedrun:tools/practice/reset
execute as @a if score @s shp_pract_tr matches 1.. run function speedrun:tools/triggers/practice_trigger
execute as @a if score @s shp_times_tr matches 1.. run function speedrun:tools/triggers/times_trigger
execute as @a if score @s shp_lobby_tr matches 1.. run function speedrun:tools/triggers/lobby_trigger

execute as @a if score @s shp_pmode_tr matches 1.. run function speedrun:tools/practice/triggers/normal_mode
execute as @a if score @s shp_pmode_tr matches 1.. run function speedrun:tools/practice/triggers/reset_mode

execute as @a if score @s shp_skip_tr matches 1 run function speedrun:tools/practice/next_split
execute as @a if score @s shp_skip_tr matches 3 run function speedrun:tools/practice/triple_next_split
execute as @a if score @s shp_skip_tr matches 5 run function speedrun:tools/practice/pentuple_next_split

execute as @a if score @s shp_skip_tr matches -1 run function speedrun:tools/practice/back_split
execute as @a if score @s shp_skip_tr matches -3 run function speedrun:tools/practice/triple_back_split
execute as @a if score @s shp_skip_tr matches -5 run function speedrun:tools/practice/pentuple_back_split

execute as @a if score @s shp_pmode_tr matches 1.. run function speedrun:tools/practice/pmode

scoreboard players set @a shp_skip_tr 0
