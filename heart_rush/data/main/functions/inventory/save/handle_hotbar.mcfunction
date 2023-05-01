data modify storage glarth:main inv.hotbar append from storage glarth:main inv.new[0]
data remove storage glarth:main inv.new[0]

function main:inventory/save/slot
execute if data storage glarth:main inv.new[0] run function main:inventory/save/sort_all