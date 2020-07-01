# Author: SirSheepe

scoreboard players set @s shp_pract_tr 0

execute unless score γcurrent shp_split_id matches 0 as @s[tag=!practice,tag=!active] if score tools_active shp_data matches 1.. run function speedrun:fail_start
execute unless score γcurrent shp_split_id matches 0 as @s[tag=!practice,tag=!active] if score tools_active shp_data matches 0 run function speedrun:tools/practice/start
execute if score γcurrent shp_split_id matches 0 as @s[tag=!active,tag=!practice] if score tools_active shp_data matches 0 run tellraw @s {"text":"There are no checkpoints, you cannot start yet!","color":"red"}

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000 1.2