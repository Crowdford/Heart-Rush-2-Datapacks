function main:inventory/sort

data modify block 0 0 0 Items set from storage glarth:main inv.inventory
loot replace entity @s inventory.0 mine 0 0 0 mainhand

data modify block 0 0 0 Items set from storage glarth:main inv.hotbar
loot replace entity @s hotbar.0 9 mine 0 0 0 mainhand

data modify block 0 0 0 Items set from storage glarth:main inv.armor
loot replace entity @s armor.feet 4 mine 0 0 0 mainhand

data modify block 0 0 0 Items set from storage glarth:main inv.offhand
loot replace entity @s weapon.offhand 1 mine 0 0 0 mainhand
