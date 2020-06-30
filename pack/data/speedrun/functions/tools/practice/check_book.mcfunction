# Author: SirSheepe

execute store result score #count shp_data run clear @s minecraft:written_book{BookItem:2b} 0
execute unless score #count shp_data matches 1 run function speedrun:tools/practice/book