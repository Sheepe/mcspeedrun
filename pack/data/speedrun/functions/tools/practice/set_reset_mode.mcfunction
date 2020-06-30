# Author: SirSheepe

scoreboard players set @s shp_pcheckmode 2
tellraw @s [{"text":"[!] ","color":"yellow"},{"text":"Changed checkpoint behaviour to: ","color":"white"},{"text":"Reset","color":"#E5458D","hoverEvent":{"action":"show_text","contents":"Finishing a section will return you to the start of it."}}]
execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1