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
execute as @a[tag=runner,tag=practice] at @s run function speedrun:tools/practice/split_check

execute as @a[tag=runner] run function speedrun:checkpoint

execute if score invisibility_mode shp_data matches 1 as @a[tag=runner,gamemode=adventure] at @s if entity @a[tag=runner,distance=0.1..5] run effect give @s minecraft:invisibility 1 255 true
execute if score invisibility_mode shp_data matches 2 as @a[tag=runner,gamemode=adventure] run effect give @s minecraft:invisibility 1 255 true

function speedrun:tools/triggers/check

title @a[tag=runner,tag=practice,gamemode=adventure] actionbar {"text":"You are in practice mode","color":"yellow"}

execute as @a unless score @s shp_pcheckmode matches 1.. run scoreboard players set @s shp_pcheckmode 1

execute as @e[type=minecraft:item] if data entity @s Item.tag.BookItem run kill @s

execute as @a[gamemode=adventure] run function speedrun:tools/check_book
execute as @a[tag=runner,tag=practice,gamemode=adventure] run function speedrun:tools/practice/check_book

scoreboard players reset * shp_click