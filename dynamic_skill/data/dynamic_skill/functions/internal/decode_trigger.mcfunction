# get trigger
data modify storage dynamic_skill:main trigger set value {id:-1,condition:{},effects:[]}
data modify storage dynamic_skill:main trigger.skillId set from storage dynamic_skill:main skill.id
data modify storage text:lib all set from storage dynamic_skill:trees triggers
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main trigger.id set from storage text:out chars[0]
data modify storage dynamic_skill:main binary set from storage text:int bits

# translation
execute store result score trigger dynamic_skill run data get storage text:out chars[0]
execute unless data storage dynamic_skill:main trigger{id:-1} run function dynamic_skill:internal/trigger/get_translation
execute unless data storage dynamic_skill:main trigger{id:-1} run data modify storage dynamic_skill:main skill.description append from storage dynamic_skill:main translation

# get condition
execute unless data storage dynamic_skill:main trigger{id:-1} run function dynamic_skill:internal/decode_condition
execute unless data storage dynamic_skill:main trigger{id:-1} run data modify storage dynamic_skill:main trigger.condition set from storage dynamic_skill:main condition 
execute unless data storage dynamic_skill:main trigger{id:-1} if score condition dynamic_skill matches 1.. run data modify storage dynamic_skill:main skill.description append from storage dynamic_skill:main translation
execute unless data storage dynamic_skill:main trigger{id:-1} if score condition dynamic_skill matches 1.. if data storage dynamic_skill:main translation_extra run data modify storage dynamic_skill:main skill.description append from storage dynamic_skill:main translation_extra

# get effects
execute unless data storage dynamic_skill:main trigger{id:-1} run data modify storage dynamic_skill:main prefix set value "• "
execute unless data storage dynamic_skill:main trigger{id:-1} run data modify storage dynamic_skill:main spaces set value [""]
execute unless data storage dynamic_skill:main trigger{id:-1} run function dynamic_skill:internal/decode_effect_list
execute unless data storage dynamic_skill:main trigger{id:-1} run data modify storage dynamic_skill:main trigger.effects append from storage dynamic_skill:main effect_list[]
execute unless data storage dynamic_skill:main trigger{id:-1} if data storage dynamic_skill:main translations[0] run data modify storage dynamic_skill:main skill.description append from storage dynamic_skill:main translations[]
# remove trigger translation if no effects
execute unless data storage dynamic_skill:main trigger{id:-1} unless data storage dynamic_skill:main translations[0] run data remove storage dynamic_skill:main skill.description[-1]

## specific extra effects
# remove object effect (object trigger trigger & object trigger type condition)
execute store result score effects dynamic_skill if data storage dynamic_skill:main trigger.effects[]
execute if data storage dynamic_skill:main trigger{id:13} if data storage dynamic_skill:main trigger.condition{id:10} run data modify block 0 1 0 Text1 set value '[" ",{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true},{"storage":"dynamic_skill:main","nbt":"prefix"},{"translate":"dynskill.skills:effects/remove_object"}]'
execute if data storage dynamic_skill:main trigger{id:13} if data storage dynamic_skill:main trigger.condition{id:10} run data modify storage dynamic_skill:main skill.description append from block 0 1 0 Text1
execute if data storage dynamic_skill:main trigger{id:13} if data storage dynamic_skill:main trigger.condition{id:10} unless score effects dynamic_skill matches 1.. run data modify storage dynamic_skill:main skill.description append value '""'
execute if data storage dynamic_skill:main trigger{id:13} if data storage dynamic_skill:main trigger.condition{id:10} unless score effects dynamic_skill matches 1.. run data modify storage dynamic_skill:main skill.description append value '""'
