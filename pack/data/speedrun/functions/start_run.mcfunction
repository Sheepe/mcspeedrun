# Author: SirSheepe

execute as @s[tag=!active] if score tools_active shp_data matches 1.. run function speedrun:fail_start
execute as @s[tag=!active] if score tools_active shp_data matches 0 run function speedrun:start
