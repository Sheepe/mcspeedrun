# Author: SirSheepe
# Sets up a split armour stand

tag @s add setup

data merge block 0 1 29999983 {Text1:'{"score":{"name":"γcurrent","objective":"shp_split_id"}}'}
data modify entity @s CustomName set from block 0 1 29999983 Text1
data modify entity @s Rotation[0] set from entity @a[tag=invoker,limit=1] Rotation[0]
data modify entity @s Rotation[1] set from entity @a[tag=invoker,limit=1] Rotation[1]

scoreboard players operation @s shp_split_id = γcurrent shp_split_id
scoreboard players add γcurrent shp_split_id 1

data modify storage shp_speedrun_coursedata input_entry set value {x: 0, y: 0, z: 0, xr: 0, yr: 0, name: ""}

data modify storage shp_speedrun_coursedata input_entry.x set from entity @s Pos[0]
data modify storage shp_speedrun_coursedata input_entry.y set from entity @s Pos[1]
data modify storage shp_speedrun_coursedata input_entry.z set from entity @s Pos[2]

data modify storage shp_speedrun_coursedata input_entry.xr set from entity @a[tag=invoker,limit=1] Rotation[0]
data modify storage shp_speedrun_coursedata input_entry.yr set from entity @a[tag=invoker,limit=1] Rotation[1]

data modify storage shp_speedrun_coursedata input_entry.name set from entity @a[tag=invoker,limit=1] Inventory[{Slot: -106b}].tag.title

data modify storage shp_speedrun_coursedata current append from storage shp_speedrun_coursedata input_entry
data remove storage shp_speedrun_coursedata input_entry
