# Author: SirSheepe

scoreboard players set @s shp_lobby_tr 0

clear @s

tag @s remove active
tag @s remove runner
tag @s remove practice

title @s actionbar ""
title @s title ""
title @s subtitle ""

tp @s @e[type=minecraft:armor_stand,tag=shp_lobby_spawn,limit=1]

execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1