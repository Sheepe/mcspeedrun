# Author: SirSheepe
# Creates the new split

title @s times 0 30 5
title @s subtitle {"text": "Split created!", "color": "green"}
title @s title ""

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 100 1.2

forceload add ~ ~
summon minecraft:armor_stand ~ ~1 ~ {Tags:["split"],Invisible:1b,Marker:1b,CustomNameVisible:1b}

execute if score γcurrent shp_split_id matches 1.. run function speedrun:data/add_null_split

execute as @e[type=minecraft:armor_stand,tag=split,tag=!setup,limit=1] run function speedrun:create/split/setup

execute if score pbs_null shp_data matches 0 run function speedrun:data/clear_pbs

scoreboard players set pbs_null shp_data 1

function speedrun:split