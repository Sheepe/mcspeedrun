# Author: SirSheepe

execute unless entity @a[tag=runner,tag=active] run give @s minecraft:carrot_on_a_stick{SplitItem:1b,ItemId:0b,display:{Name:'{"text":"New Split","color":"yellow","italic":"false"}',Lore:['{"text":"Right click to place a time split","color":"gray","italic":"false"}']}}
execute if entity @a[tag=runner,tag=active] run function speedrun:delete_split