# Author: SirSheepe

tag @s add our_runner

scoreboard players operation #next_split shp_cur_split = @s shp_cur_split
scoreboard players add #next_split shp_cur_split 1

execute if score @s shp_pcheckmode matches 1 as @e[type=minecraft:armor_stand,tag=split,sort=nearest] at @s if score @s shp_split_id = #next_split shp_cur_split as @a[tag=our_runner,limit=1,distance=..2.5] run function speedrun:tools/practice/next_split_auto
execute if score @s shp_pcheckmode matches 2 as @e[type=minecraft:armor_stand,tag=split,sort=nearest] at @s if score @s shp_split_id = #next_split shp_cur_split as @a[tag=our_runner,limit=1,distance=..2.5] run function speedrun:tools/practice/reset_split

tag @s remove our_runner