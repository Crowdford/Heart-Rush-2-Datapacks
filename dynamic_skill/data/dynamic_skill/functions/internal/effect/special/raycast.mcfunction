# store effect to stack [util]
function dynamic_skill:internal/effect/special/util/stack_save

# get arguments
scoreboard players set digits dynamic_skill 5
function dynamic_skill:internal/util/decode_binary
scoreboard players add int dynamic_skill 1
function dynamic_skill:internal/effect/write_arg_score_special

scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
scoreboard players add int dynamic_skill 1
function dynamic_skill:internal/effect/write_arg_score_special

# provide pseudo trigger location data
data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.location"}'
data modify storage dynamic_skill:main trigger_data_translations[1] set value '{"translate":"dynskill.triggers.location2.location"}'
data modify storage dynamic_skill:main trigger_data_translations[2] set value '{"translate":"dynskill.triggers.location3.location"}'
data modify storage dynamic_skill:main trigger_data_translations[3] set value '{"translate":"dynskill.triggers.location4.location"}'
data modify storage dynamic_skill:main trigger_data_translations[4] set value '{"translate":"dynskill.triggers.location2.location"}'
data modify storage dynamic_skill:main trigger_data_translations[8] set value '{"translate":"dynskill.triggers.location5.location"}'
data modify storage dynamic_skill:main trigger_data_translations[9] set value '{"translate":"dynskill.triggers.location6.location"}'

# effect list
data modify storage dynamic_skill:main spaces append value "   "
data modify storage dynamic_skill:main prefix set value "@ "
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effect_list
data modify storage dynamic_skill:main stack[-1].args append from storage dynamic_skill:main effect_list
data modify storage dynamic_skill:main extra_translations set from storage dynamic_skill:main stack[-4].value
data modify storage dynamic_skill:main extra_translations append from storage dynamic_skill:main translations[]

# remove special for translations as effect list is unused
execute unless data storage dynamic_skill:main stack[-1].args[1][0] run data modify storage dynamic_skill:main stack[-4].value set value []

# load effect from stack [util]
function dynamic_skill:internal/effect/special/util/stack_load