# store effect to stack [util]
function dynamic_skill:internal/effect/special/util/stack_save

# get arguments
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
function dynamic_skill:internal/effect/write_arg_score_special

execute if score int dynamic_skill matches 0 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.special:self0","with":[{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[11]","interpret":true}]}'
execute if score int dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.special:self1","with":[{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[11]","interpret":true}]}'
data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1


# provide pseudo trigger location data
# provide pseudo trigger location data
function dynamic_skill:internal/effect/special/self_context_self
execute if data storage dynamic_skill:main trigger{id:13} run function dynamic_skill:internal/effect/special/self_context_them
execute if data storage dynamic_skill:main trigger{id:45} run function dynamic_skill:internal/effect/special/self_context_them

# if context uses a 'self' but location and identity are different remove the 'self'
data modify storage dynamic_skill:main temp set from storage dynamic_skill:main trigger_data_translations[0] 
execute if data storage dynamic_skill:main {temp:'{"translate":"dynskill.triggers.location1.self"}'} run data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.self_alt"}'
execute if data storage dynamic_skill:main {temp:'{"translate":"dynskill.triggers.location1.player"}'} run data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.player_alt"}'

# effect list
data modify storage dynamic_skill:main spaces append value "   "
data modify storage dynamic_skill:main prefix set value "• "
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effect_list
data modify storage dynamic_skill:main stack[-1].args append from storage dynamic_skill:main effect_list
data modify storage dynamic_skill:main extra_translations set from storage dynamic_skill:main translations

# remove special for translations as effect list is unused
execute unless data storage dynamic_skill:main stack[-1].args[1][0] run data modify storage dynamic_skill:main stack[-4].value set value []

# load effect from stack [util]
function dynamic_skill:internal/effect/special/util/stack_load