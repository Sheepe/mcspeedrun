# Author: SirSheepe

scoreboard players set @s shp_pcheckmode 1
tellraw @s [{"text":"[!] ","color":"yellow"},{"text":"Changed checkpoint behaviour to: ","color":"white"},{"text":"Normal","color":"#2CC8D8","hoverEvent":{"action":"show_text","contents":"Checkpoints can be collected as normal."}}]
execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1