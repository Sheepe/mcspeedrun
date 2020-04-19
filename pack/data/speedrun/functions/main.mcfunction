# Author: SirSheepe

function speedrun:tool_check

execute if entity @a[tag=runner,tag=active] run clear @a minecraft:writable_book{SplitItem:1b}
execute if entity @a[tag=runner,tag=active] run clear @a minecraft:written_book{SplitItem:1b}
execute if entity @a[tag=runner,tag=active] run clear @a minecraft:carrot_on_a_stick{SplitItem:1b}

execute unless entity @a[tag=runner,tag=active] as @a if score @s shp_click matches 1.. at @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemId:0b}}}] run function speedrun:tools/new/split
execute unless entity @a[tag=runner,tag=active] as @a if score @s shp_click matches 1.. at @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemId:1b}}}] run function speedrun:tools/delete/split

execute as @a[tag=runner,tag=active] run scoreboard players add @s shp_global_time 1
execute as @a[tag=runner,tag=active] run scoreboard players add @s shp_split_time 1

execute as @a[tag=runner,tag=active] run function speedrun:actionbar

execute as @a[tag=runner,tag=active] at @s run function speedrun:split_check

execute as @a[tag=runner] run function speedrun:checkpoint

scoreboard players reset * shp_click