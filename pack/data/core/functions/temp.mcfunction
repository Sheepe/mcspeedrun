# Author: SirSheepe

data modify storage test tempA set value []
data modify storage test tempB set value []
data modify storage test tempA append from entity @s Pos[]
data modify storage test tempB append from entity @s Rotation[]
data modify storage test dataPos append from storage test tempA
data modify storage test dataRot append from storage test tempB