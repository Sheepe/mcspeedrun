# Author: SirSheepe

execute unless entity @a[tag=runner,tag=active] run give @s minecraft:carrot_on_a_stick{SplitItem:1b,ItemId:1b,display:{Name:'{"text":"Delete Split","color":"yellow","italic":"false"}',Lore:['{"text":"Stand near a split to remove it","color":"gray","italic":"false"}']}}
execute if entity @a[tag=runner,tag=active] run function speedrun:delete_split