# Author: SirSheepe

tag @s add us

execute store result score ypos shp_data run data get entity @s Pos[1]
execute if score ypos shp_data matches ..0 as @e[type=minecraft:armor_stand,tag=split] at @s if score @s shp_split_id = @a[tag=us,limit=1] shp_cur_split run tp @a[tag=us] ^ ^ ^ facing ^ ^ ^1

tag @s remove us