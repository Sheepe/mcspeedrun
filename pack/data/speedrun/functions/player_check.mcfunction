# Author: SirSheepe

execute store result score #fetch shp_data run clear @s minecraft:carrot_on_a_stick{SplitItem:1b} 0
scoreboard players operation #total shp_data += #fetch shp_data

execute store result score #fetch shp_data run clear @s minecraft:writable_book{SplitItem:1b} 0
scoreboard players operation #total shp_data += #fetch shp_data

execute store result score #fetch shp_data run clear @s minecraft:written_book{SplitItem:1b} 0
scoreboard players operation #total shp_data += #fetch shp_data