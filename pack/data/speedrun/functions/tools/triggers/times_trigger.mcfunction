# Author: SirSheepe
# List out all of a player's times

scoreboard players set @s shp_times_tr 0

function speedrun:get_times

execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1