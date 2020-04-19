# Author: SirSheepe
# Adds a new split

tag @s add new_split
title @s times 0 5 1

effect give @s minecraft:slowness 1000000 255 true
effect give @s minecraft:jump_boost 1000000 250 true

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 100 0.8

function speedrun:create/split/new_book