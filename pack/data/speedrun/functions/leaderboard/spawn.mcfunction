# Author: SirSheepe

function speedrun:leaderboard/remove

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["shp_leaderboard","shp_base"],Radius:0,Duration:2147483647}

forceload add ~ ~

summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["shp_leaderboard","shp_place_10","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["shp_leaderboard","shp_place_9","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~0.8 ~ {Tags:["shp_leaderboard","shp_place_8","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~1.1 ~ {Tags:["shp_leaderboard","shp_place_7","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~1.4 ~ {Tags:["shp_leaderboard","shp_place_6","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~1.7 ~ {Tags:["shp_leaderboard","shp_place_5","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~2.0 ~ {Tags:["shp_leaderboard","shp_place_4","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~2.3 ~ {Tags:["shp_leaderboard","shp_place_3","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~2.6 ~ {Tags:["shp_leaderboard","shp_place_2","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}
summon minecraft:area_effect_cloud ~ ~2.9 ~ {Tags:["shp_leaderboard","shp_place_1","shp_place"],Radius:0,Duration:2147483647,CustomName:'{"text":"-","color":"white","bold":"true"}',CustomNameVisible:1b}

summon minecraft:area_effect_cloud ~ ~3.4 ~ {Tags:["shp_leaderboard","shp_title"],Radius:0,Duration:2147483647,CustomName:'{"text":"Best Time Leaderboard","color":"yellow","bold":"true"}',CustomNameVisible:1b}

function speedrun:leaderboard/update