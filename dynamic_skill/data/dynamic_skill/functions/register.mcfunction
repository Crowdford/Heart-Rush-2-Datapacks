# clear dynamic skills 
data modify storage dynamic_skill:main skills set value []
data remove storage dynamic_skill:main binary_copy


data modify storage dynamic_skill:main binary set value [1b, 0b, 1b, 0b, 1b, 0b, 1b, 1b, 1b, 0b, 1b, 0b, 0b, 1b, 1b, 0b, 0b, 0b, 0b, 1b, 0b, 0b, 0b, 1b, 1b, 1b, 0b, 0b, 0b, 1b, 1b, 0b, 1b, 1b, 0b, 0b, 1b, 0b, 1b, 1b, 1b, 1b, 1b, 1b, 0b, 1b, 0b, 1b, 0b, 1b, 1b, 0b, 0b, 1b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
function dynamic_skill:decode
#gamerule maxCommandChainLength 5000
