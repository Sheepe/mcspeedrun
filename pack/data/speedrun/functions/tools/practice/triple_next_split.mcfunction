# Author: SirSheepe

scoreboard players operation #before shp_cur_split = @s shp_cur_split
scoreboard players add @s shp_cur_split 3
scoreboard players operation @s shp_cur_split < max_split shp_cur_split
scoreboard players operation #before shp_cur_split -= @s shp_cur_split
scoreboard players operation #before shp_cur_split *= #minus shp_data

tag @s add us

execute if score #before shp_cur_split matches 1.. as @e[type=minecraft:armor_stand,tag=split] at @s if score @s shp_split_id = @a[tag=us,limit=1] shp_cur_split run tp @a[tag=us] ^ ^ ^ facing ^ ^ ^1

tag @s remove us

execute if score #before shp_cur_split matches 1.. run function speedrun:tools/practice/say_current
execute if score #before shp_cur_split matches 1 run title @s title {"text":"Section Skipped","color":"green"}
execute if score #before shp_cur_split matches 2.. run title @s title [{"score":{"name":"#before","objective":"shp_cur_split"},"color":"green"},{"text":" Sections Skipped","color":"green"}]

execute if score #before shp_cur_split matches 1.. at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1

execute if score #before shp_cur_split matches 0 run title @s title {"text":"No Sections to Skip","color":"green"}
execute if score #before shp_cur_split matches 0 at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~