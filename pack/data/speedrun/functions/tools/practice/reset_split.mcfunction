# Author: SirSheepe

tag @s add us

scoreboard players add @s shp_cur_split 1
function speedrun:data/fetch_split
scoreboard players remove @s shp_cur_split 1

execute if score @s shp_cur_split = max_split shp_cur_split run title @s subtitle {"text":"Finish Line","color":"yellow"}

title @s subtitle [{"text":"Section: ","color":"green"},{"nbt":"split_fetch.name","storage":"minecraft:shp_speedrun_coursedata"}]
title @s title ""


execute as @e[type=minecraft:armor_stand,tag=split] at @s if score @s shp_split_id = @a[tag=us,limit=1] shp_cur_split run tp @a[tag=us] ^ ^ ^ facing ^ ^ ^1

tag @s remove us

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000 1