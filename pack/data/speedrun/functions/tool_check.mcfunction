# Author: SirSheepe

scoreboard players set #total shp_data 0
execute as @a run function speedrun:player_check

execute if score tools_active shp_data matches 1 if score #total shp_data matches 0 as @e[type=minecraft:armor_stand,tag=split] run data merge entity @s {CustomNameVisible:0b}
execute if score tools_active shp_data matches 0 if score #total shp_data matches 1 as @e[type=minecraft:armor_stand,tag=split] run data merge entity @s {CustomNameVisible:1b}

execute if score #total shp_data matches 1.. run scoreboard players set tools_active shp_data 1
execute if score #total shp_data matches 0 run scoreboard players set tools_active shp_data 0