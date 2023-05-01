tellraw @a ["\n1: ",{"nbt":"pattern[0]","storage":"sbc:shield"}]
data modify storage sbc:shield pattern_adjusted set value []
data modify storage sbc:shield patterns set value []
scoreboard players set position shield 2
data modify storage sbc:shield patterns append from storage sbc:shield pattern[]
function main:shield/adjust_position
data modify storage sbc:shield patterns append from storage sbc:shield pattern_adjusted[]
scoreboard players set position shield 3
function main:shield/adjust_position
data modify storage sbc:shield patterns append from storage sbc:shield pattern_adjusted[]
scoreboard players set position shield 4
function main:shield/adjust_position
data modify storage sbc:shield patterns append from storage sbc:shield pattern_adjusted[]

data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:shield",Count:1s,tag:{BlockEntityTag:{Base:0,Patterns:[]}}}]
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append from storage sbc:shield patterns[]
loot give @s mine 0 0 0