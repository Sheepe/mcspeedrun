# Author: SirSheepe

execute as @s[tag=active] run tellraw @s {"text":"You're already running the course. If you want to reset, click reset inside the tool book.","color":"red"}

scoreboard players set @s shp_start_tr 0
function speedrun:start_run