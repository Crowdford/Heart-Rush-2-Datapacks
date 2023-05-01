# store effect to stack [util]
function dynamic_skill:internal/effect/special/util/stack_save

# effect list
data modify storage dynamic_skill:main spaces append value "   "
data modify storage dynamic_skill:main prefix set value "︖ "
data modify storage dynamic_skill:main extra_translations set value []

# effect list list
scoreboard players set randIndex dynamic_skill 0
function dynamic_skill:internal/effect/special/util/trig_done_check

# remove trig done
data remove storage dynamic_skill:main binary[0]
data remove storage dynamic_skill:main binary[0]
data remove storage dynamic_skill:main binary[0]

# load effect from stack [util]
function dynamic_skill:internal/effect/special/util/stack_load

# load extra translations 
data modify storage dynamic_skill:main extra_translations set from storage dynamic_skill:main args_text