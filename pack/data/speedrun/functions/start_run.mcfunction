# Author: SirSheepe

execute unless score γcurrent shp_split_id matches 0 as @s[tag=!active] if score tools_active shp_data matches 1.. run function speedrun:fail_start
execute unless score γcurrent shp_split_id matches 0 as @s[tag=!active] if score tools_active shp_data matches 0 run function speedrun:start
execute if score γcurrent shp_split_id matches 0 as @s[tag=!active] if score tools_active shp_data matches 0 run tellraw @s {"text":"There are no checkpoints, you cannot start yet!","color":"red"}
