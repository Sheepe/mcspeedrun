# Author: SirSheepe
# Forcefully resets all splits

execute at @e[type=minecraft:armor_stand,tag=split] run forceload remove ~ ~
execute at @e[type=minecraft:armor_stand,tag=shp_lobby_spawn] run forceload add ~ ~
kill @e[type=minecraft:armor_stand,tag=split]
scoreboard players reset * shp_cur_split
scoreboard players set γcurrent shp_split_id 0

data modify storage shp_speedrun_coursedata current set value []