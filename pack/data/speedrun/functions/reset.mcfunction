# Author: SirSheepe

tag @s[tag=active,tag=runner] add running

tag @s remove active
tag @s remove runner

execute as @s[tag=!running] run tellraw @s {"text":"You can't reset if you haven't started a run yet. Type '/function speedrun:start_run'","color":"red"}

execute as @s[tag=running] run function speedrun:start_run