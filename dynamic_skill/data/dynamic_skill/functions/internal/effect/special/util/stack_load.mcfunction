data modify storage dynamic_skill:main effect set from storage dynamic_skill:main stack[-1]
data modify storage dynamic_skill:main effect_list set from storage dynamic_skill:main stack[-2].value
data modify storage dynamic_skill:main translations set from storage dynamic_skill:main stack[-3].value
data modify storage dynamic_skill:main args_text set from storage dynamic_skill:main stack[-4].value
data modify storage dynamic_skill:main trigger_data_translations set from storage dynamic_skill:main stack[-5].value
data modify storage dynamic_skill:main spaces set from storage dynamic_skill:main stack[-6].value
data modify storage dynamic_skill:main prefix set from storage dynamic_skill:main stack[-7].value
data remove storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main effect.id