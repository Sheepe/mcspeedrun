# Author: SirSheepe

execute if score @s shp_cur_split < max_split shp_cur_split run tag @s add less

scoreboard players add @s[tag=less] shp_cur_split 1
function speedrun:data/fetch_split
scoreboard players remove @s[tag=less] shp_cur_split 1

execute if score @s shp_cur_split = max_split shp_cur_split run title @s subtitle {"text":"The Finish Line","color":"yellow"}

title @s[tag=less] subtitle [{"text":"Section: ","color":"yellow"},{"nbt":"split_fetch.name","storage":"minecraft:shp_speedrun_coursedata"}]

tag @s remove less