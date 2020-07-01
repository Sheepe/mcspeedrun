# Author: SirSheepe

execute at @s run loot spawn ~ -100 ~ loot speedrun:get_name
execute at @s positioned ~ -100 ~ run data modify storage minecraft:shp_speedrun_records temp set value {pb:2147483647.0d,splits:[]}
execute at @s positioned ~ -100 ~ run data modify storage minecraft:shp_speedrun_records temp.name set from entity @e[type=item,sort=nearest,limit=1] Item.tag.SkullOwner.Name
data modify storage minecraft:shp_speedrun_records data append from storage minecraft:shp_speedrun_records temp
data remove storage minecraft:shp_speedrun_records temp
execute at @s positioned ~ -100 ~ run kill @e[type=item,sort=nearest,limit=1]

scoreboard players operation index3 shp_data > @e[type=minecraft:armor_stand,tag=split] shp_split_id
execute if score index3 shp_data matches 1.. run function speedrun:data/add_entry_iterate