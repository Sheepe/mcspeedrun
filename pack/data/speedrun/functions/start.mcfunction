# Author: SirSheepe

tag @s add runner
tag @s add active

execute unless score @s shp_player_id matches 0.. run function player:assign_id

tag @s add us

scoreboard players set @s shp_global_time 0
scoreboard players set @s shp_split_time 0

scoreboard players set @s shp_cur_split 0

execute as @e[type=minecraft:armor_stand,tag=split] at @s if score @s shp_split_id matches 0 run tp @a[tag=us] ^ ^ ^ facing ^ ^ ^1
gamemode adventure @s
clear @s
effect clear @s

effect give @s minecraft:saturation 1000000 255 true

function speedrun:data/fetch_best

title @s times 0 50 2
title @s subtitle ""
title @s title {"text":"Start!","color":"green"}

scoreboard players operation max_split shp_cur_split > @e[type=minecraft:armor_stand,tag=split] shp_split_id
#scoreboard players remove max_split shp_cur_split 1

scoreboard players set @s shp_global_loss 0

tag @s remove us