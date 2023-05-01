# Item
loot insert 0 0 0 loot skills:blocks/stone
data modify block 0 0 0 Items[-1].id set from storage skills:main skill.item
data modify block 0 0 0 Items[-1].tag.eval set from storage skills:main skill.id
data modify block 0 0 0 Items[-1].tag.egui set value 1
data modify block 0 0 0 Items[-1].tag.HideFlags set value 127

# Name
data modify block 0 1 0 Text1 set value '{"nbt":"skill.name","storage":"skills:main","italic":false,"bold":true,"color":"gray","interpret":true}'
data modify block 0 0 0 Items[-1].tag.display.Name set from block 0 1 0 Text1

# Lore
data modify storage skills:main desc set from storage skills:main skill.desc
execute if data storage skills:main desc[0] run function skills:load/description
data remove storage skills:main desc_line
data remove storage skills:main desc