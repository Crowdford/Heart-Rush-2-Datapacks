data modify block 0 1 0 Text1 set value '[{"text":"","color":"gray"},{"storage":"dynamic_skill:main","nbt":"description[-1]","interpret":true},"\\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true}]'
data modify storage dynamic_skill:main combined_description set from block 0 1 0 Text1
data remove storage dynamic_skill:main description[-1]
execute if data storage dynamic_skill:main description[-1] run function dynamic_skill:internal/combine_description