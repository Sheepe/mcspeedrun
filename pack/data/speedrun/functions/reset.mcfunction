# Author: SirSheepe

tag @s[tag=active,tag=runner,tag=!practice] add running
tag @s[tag=!active,tag=runner,tag=practice] add practicing

tag @s remove active
tag @s remove runner
tag @s remove practice

execute as @s[tag=!running,tag=!practicing] run tellraw @s {"text":"You can't reset if you haven't started a run yet!","color":"red"}
execute as @s[tag=running] run function speedrun:start_run
execute as @s[tag=practicing] run function speedrun:tools/practice/start