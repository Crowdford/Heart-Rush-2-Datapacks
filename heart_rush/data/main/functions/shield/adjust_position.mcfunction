data modify storage sbc:shield pattern_adjusted append from storage sbc:shield pattern[0]
data modify storage sbc:shield pattern_adj set from storage sbc:shield pattern[0]
data remove storage sbc:shield pattern[0]
execute if score position shield matches 1 run function main:shield/adj/1
execute if score position shield matches 2 run function main:shield/adj/2
execute if score position shield matches 3 run function main:shield/adj/3
execute if score position shield matches 4 run function main:shield/adj/4
execute if data storage sbc:shield pattern[0] run function main:shield/adjust_position