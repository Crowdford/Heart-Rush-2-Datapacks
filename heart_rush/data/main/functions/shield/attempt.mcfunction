data modify storage sbc:shield patterns set value []
data modify storage sbc:shield pattern set value []
scoreboard players set length shield 0

scoreboard players set position shield 1
data modify storage sbc:shield char set from storage sbc:shield chars[0]
function main:shield/char
scoreboard players set position shield 2
data modify storage sbc:shield char set from storage sbc:shield chars[1]
function main:shield/char
scoreboard players set position shield 3
data modify storage sbc:shield char set from storage sbc:shield chars[2]
function main:shield/char
scoreboard players set position shield 4
data modify storage sbc:shield char set from storage sbc:shield chars[3]
function main:shield/char

