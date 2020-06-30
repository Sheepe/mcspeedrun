# Author: SirSheepe

scoreboard players add @s shp_cur_split 1

execute if score @s shp_cur_split < max_split shp_cur_split run tag @s add less

scoreboard players add @s[tag=less] shp_cur_split 1
function speedrun:data/fetch_split
scoreboard players remove @s[tag=less] shp_cur_split 1

execute if score @s shp_cur_split = max_split shp_cur_split run title @s subtitle {"text":"Finish Line","color":"yellow"}

title @s[tag=less] subtitle [{"text":"Section: ","color":"green"},{"nbt":"split_fetch.name","storage":"minecraft:shp_speedrun_coursedata"}]

tag @s remove less

title @s title ""

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000 1.2