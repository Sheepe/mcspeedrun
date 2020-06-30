# Author: SirSheepe

scoreboard players set @s shp_reset_tr 0
function speedrun:tools/practice/start
title @s title {"text":"Returned to Start","color":"green"}

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000 1.2