# Author: SirSheepe

execute if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches ..9 run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (+","color":"red","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":".0","color":"red","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":")","color":"red","bold":"false"}]
execute if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches 10.. run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (+","color":"red","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":".","color":"red","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":")","color":"red","bold":"false"}]
execute if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches ..9 run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (-","color":"green","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".0","color":"green","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":")","color":"green","bold":"false"}]
execute if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches ..0 if score ms0 shp_global_time matches 10.. run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (-","color":"green","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".","color":"green","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":")","color":"green","bold":"false"}]

execute if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches ..9 run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (+","color":"red","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":":","color":"red","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":".0","color":"red","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":")","color":"red","bold":"false"}]
execute if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches 10.. run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (+","color":"red","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":":","color":"red","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":".","color":"red","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":")","color":"red","bold":"false"}]
execute if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches ..9 run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (-","color":"green","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":","color":"green","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".0","color":"green","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":")","color":"green","bold":"false"}]
execute if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches 10.. if score ms0 shp_global_time matches 10.. run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (-","color":"green","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":","color":"green","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".","color":"green","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":")","color":"green","bold":"false"}]

execute if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches ..9 run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (+","color":"red","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":":0","color":"red","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":".0","color":"red","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":")","color":"red","bold":"false"}]
execute if score loss_save shp_global_time matches ..0 if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches 10.. run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (+","color":"red","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":":0","color":"red","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":".","color":"red","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"red","bold":"false"},{"text":")","color":"red","bold":"false"}]
execute if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches ..9 run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (-","color":"green","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":0","color":"green","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".0","color":"green","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":")","color":"green","bold":"false"}]
execute if score loss_save shp_global_time matches 1.. if score m0 shp_global_time matches 1.. if score s0 shp_global_time matches ..9 if score ms0 shp_global_time matches 10.. run tellraw @s [{"text":"> ","color":"gray","bold":"true"},{"nbt":"split_fetch.name","storage":"shp_speedrun_coursedata","color":"white","bold":"false"},{"text":": ","color":"reset","bold":"false"},{"score":{"name":"m","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":":","bold":"false","color":"dark_red"},{"text":"0","bold":"false","color":"dark_red"},{"score":{"name":"s","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":".0","bold":"false","color":"dark_red"},{"score":{"name":"ms","objective":"shp_global_time"},"bold":"false","color":"dark_red"},{"text":" (-","color":"green","bold":"false"},{"score":{"name":"m0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":":0","color":"green","bold":"false"},{"score":{"name":"s0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":".","color":"green","bold":"false"},{"score":{"name":"ms0","objective":"shp_global_time"},"color":"green","bold":"false"},{"text":")","color":"green","bold":"false"}]
