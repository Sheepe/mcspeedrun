# Author: SirSheepe

execute as @a[tag=new_split] run title @s subtitle {"text": "Right click to name the split", "color": "yellow"}
execute as @a[tag=new_split] run title @s title ""

execute as @a[tag=new_split] unless data entity @s Inventory[{Slot: -106b}] run function speedrun:create/split/new_book
execute as @a[tag=new_split] if data entity @s Inventory[{Slot: -106b, "id":"minecraft:written_book"}] run function speedrun:create/split/check

function speedrun:main