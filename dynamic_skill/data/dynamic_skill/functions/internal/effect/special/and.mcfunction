# condition (condition is not added to args_text to not put AND if there's no second condition)
data modify storage dynamic_skill:main effect.args append value []
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_condition
function dynamic_skill:internal/condition/get_translation
data modify storage dynamic_skill:main effect.args[0] append from storage dynamic_skill:main condition 
data modify storage dynamic_skill:main args_text set value []
execute if score condition dynamic_skill matches 1.. run data modify storage dynamic_skill:main args_text append from storage dynamic_skill:main translation
execute if score condition dynamic_skill matches 1.. if data storage dynamic_skill:main translation_extra run data modify storage dynamic_skill:main args_text append from storage dynamic_skill:main translation_extra

# store effect to stack [util]
function dynamic_skill:internal/effect/special/util/stack_save

# effect list
execute if score condition dynamic_skill matches 1.. run data modify storage dynamic_skill:main spaces append value "   "
execute if score condition dynamic_skill matches 1.. run data modify storage dynamic_skill:main prefix set value "‣ "
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effect_list
data modify storage dynamic_skill:main stack[-1].args append from storage dynamic_skill:main effect_list
data modify storage dynamic_skill:main extra_translations set from storage dynamic_skill:main translations

# remove special for translations as effect list is unused
execute unless data storage dynamic_skill:main stack[-1].args[1][0] run data modify storage dynamic_skill:main stack[-4].value set value []

# load effect from stack [util]
function dynamic_skill:internal/effect/special/util/stack_load
