# Author: SirSheepe

tag @s remove active
tag @s remove runner

scoreboard players add @s shp_cur_split 1

scoreboard players operation #split_time shp_b_split_time = @s shp_b_split_time

function speedrun:data/fetchset_best

function speedrun:split/print

scoreboard players set @s shp_cur_split 0
execute unless entity @e[type=minecraft:armor_stand,tag=shp_lobby_spawn] as @e[type=minecraft:armor_stand,tag=split] at @s if score @s shp_split_id matches 0 run tp @a[tag=us] ^ ^ ^ facing ^ ^ ^1
execute if entity @e[type=minecraft:armor_stand,tag=shp_lobby_spawn] run tp @s @e[type=minecraft:armor_stand,tag=shp_lobby_spawn,limit=1]

scoreboard players set pbs_null shp_data 0

scoreboard players operation ms shp_global_time = @s shp_global_time
scoreboard players operation ms shp_global_time %= twenty shp_data
scoreboard players operation ms shp_global_time *= five shp_data

scoreboard players operation s shp_global_time = @s shp_global_time
scoreboard players operation s shp_global_time /= twenty shp_data

scoreboard players operation m shp_global_time = s shp_global_time

scoreboard players operation s shp_global_time %= sixty shp_data
scoreboard players operation m shp_global_time /= sixty shp_data

title @s times 0 100 2

execute if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run title @s subtitle [{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":0"},{"score":{"name":"s","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms","objective":"shp_global_time"}}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run title @s subtitle [{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":"},{"score":{"name":"s","objective":"shp_global_time"}},{"text":".0"},{"score":{"name":"ms","objective":"shp_global_time"}}]
execute if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run title @s subtitle [{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":0"},{"score":{"name":"s","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms","objective":"shp_global_time"}}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run title @s subtitle [{"score":{"name":"m","objective":"shp_global_time"},"color":"yellow"},{"text":":"},{"score":{"name":"s","objective":"shp_global_time"}},{"text":"."},{"score":{"name":"ms","objective":"shp_global_time"}}]

execute if score @s shp_global_time >= @s shp_best_time run title @s title {"text":"Finished!","color":"green"}
execute if score @s shp_global_time < @s shp_best_time run title @s title {"text":"New Record!","color":"green"}

execute if score @s shp_global_time >= @s shp_best_time at @s run playsound minecraft:entity.drowned.ambient_water master @s ~ ~ ~ 1000 1.2
execute if score @s shp_global_time < @s shp_best_time at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1000 1.3

execute if score s shp_global_time matches ..9 if score ms shp_global_time matches ..9 run tellraw @a [{"text":"> ","color":"gray","bold":"true"},{"selector": "@s","color":"yellow","bold":"false"},{"text":" finished with time: ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":0","color":"green","bold":"false"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".0","color":"green","bold":"false"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green","bold":"false"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches ..9 run tellraw @a [{"text":"> ","color":"gray","bold":"true"},{"selector": "@s","color":"yellow","bold":"false"},{"text":" finished with time: ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":","color":"green","bold":"false"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".0","color":"green","bold":"false"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green","bold":"false"}]
execute if score s shp_global_time matches ..9 if score ms shp_global_time matches 10.. run tellraw @a [{"text":"> ","color":"gray","bold":"true"},{"selector": "@s","color":"yellow","bold":"false"},{"text":" finished with time: ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":0","color":"green","bold":"false"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".","color":"green","bold":"false"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green","bold":"false"}]
execute if score s shp_global_time matches 10.. if score ms shp_global_time matches 10.. run tellraw @a [{"text":"> ","color":"gray","bold":"true"},{"selector": "@s","color":"yellow","bold":"false"},{"text":" finished with time: ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":","color":"green","bold":"false"},{"score":{"name":"s","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".","color":"green","bold":"false"},{"score":{"name":"ms","objective":"shp_global_time"},"color":"green","bold":"false"}]

function speedrun:leaderboard/update