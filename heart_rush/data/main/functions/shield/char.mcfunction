execute if score over shield matches ..0 run scoreboard players set attempt shield 0
function main:shield/get_char
#tellraw @a {"nbt":"pattern","storage":"sbc:shield"}
execute store result score lengthX shield run data get storage sbc:shield pattern 
scoreboard players operation length shield += lengthX shield
data modify storage sbc:shield pattern_adjusted set value []
function main:shield/adjust_position
data modify storage sbc:shield patterns append from storage sbc:shield pattern_adjusted[]
