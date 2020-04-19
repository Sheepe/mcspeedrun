# Author: SirSheepe
# Checks if the split name is gucci and creates the split if so

tag @s add invoker

execute store result score #len shp_data run data get entity @s Inventory[{Slot: -106b}].tag.title

execute at @s if score #len shp_data matches 1 run function speedrun:create/split/exit
execute at @s if score #len shp_data matches 2.. run function speedrun:create/split/new

tag @s remove new_split

clear @s minecraft:writable_book{SplitItem:1b}
clear @s minecraft:written_book{SplitItem:1b}

effect clear @s minecraft:slowness
effect clear @s minecraft:jump_boost

tag @a remove invoker