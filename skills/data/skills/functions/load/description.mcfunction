data modify storage skills:main desc_line set from storage skills:main desc[0]
data remove storage skills:main desc[0]

# Lore
data modify block 0 1 0 Text1 set value '[{"text":"","italic":false,"color":"gray"},{"nbt":"desc_line","storage":"skills:main","interpret":true}]'
data modify block 0 0 0 Items[-1].tag.display.Lore append from block 0 1 0 Text1

execute if data storage skills:main desc[0] run function skills:load/description