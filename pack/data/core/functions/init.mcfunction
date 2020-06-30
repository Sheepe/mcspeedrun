# Author: SirSheepe

scoreboard objectives add shp_player_id dummy

scoreboard objectives add shp_split_id dummy
scoreboard players set γcurrent shp_split_id 0

scoreboard objectives add shp_tool_id dummy

scoreboard objectives add shp_global_time dummy
scoreboard objectives add shp_split_time dummy

scoreboard objectives add shp_cur_split dummy
scoreboard objectives add shp_b_split_time dummy
scoreboard objectives add shp_best_time dummy

scoreboard objectives add shp_p_best_time dummy
scoreboard objectives add shp_global_loss dummy

scoreboard objectives add shp_pcheckmode dummy

scoreboard objectives add shp_data dummy
scoreboard players set sixty shp_data 60
scoreboard players set five shp_data 5
scoreboard players set twenty shp_data 20
scoreboard players set #zero shp_data 0
scoreboard players set #minus shp_data -1

scoreboard players set tools_active shp_data 0
scoreboard players set pbs_null shp_data 1

scoreboard players set invisibility_mode shp_data 1

# Invisibility Modes
# 0 - None
# 1 - Local
# 2 - Always

scoreboard objectives add shp_last_split dummy

scoreboard objectives add shp_click minecraft.used:minecraft.carrot_on_a_stick

forceload add 0 29999983
fill 0 0 29999983 15 0 29999968 bedrock
setblock 0 1 29999983 minecraft:oak_sign

function speedrun:tools/triggers/init