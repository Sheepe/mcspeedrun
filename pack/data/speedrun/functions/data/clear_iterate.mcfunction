# Author: SirSheepe

loot spawn ~ -1000 ~ loot speedrun:get_name
data modify storage minecraft:shp_speedrun_records data append value {pb:2147483647.0d,splits:[]}
execute positioned ~ -1000 ~ run data modify storage minecraft:shp_speedrun_records data[-1].name set from entity @e[type=item,sort=nearest,limit=1] Item.tag.SkullOwner.Name
execute positioned ~ -1000 ~ run kill @e[type=item,sort=nearest,limit=1]

scoreboard players operation index2 shp_data > @e[type=minecraft:armor_stand,tag=split] shp_split_id
execute if score index2 shp_data matches 1.. run function speedrun:data/clear_iterate_second

scoreboard players remove index shp_data 1
execute if score index shp_data matches 1.. run function speedrun:data/clear_iterate