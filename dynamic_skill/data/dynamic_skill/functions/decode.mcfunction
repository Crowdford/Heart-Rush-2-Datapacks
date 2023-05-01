#tellraw @a [{"text":"","color":"gold"},"All Bits: ",{"storage":"dynamic_skill:main","nbt":"binary"}]

## Decode the skill
data modify storage dynamic_skill:main skill set value {triggers:[],name:[],description:[],item:"",id:-1}

## check type of skill 
data modify storage dynamic_skill:main skillType set from storage dynamic_skill:main binary[0]

## Decode Name
execute if data storage dynamic_skill:main {skillType:0b} run function dynamic_skill:internal/decode_name
execute if data storage dynamic_skill:main {skillType:1b} run function dynamic_skill:internal/decode_name
execute if data storage dynamic_skill:main {skillType:2b} run function dynamic_skill:internal/decode_name_alt

## Decode Item
function dynamic_skill:internal/decode_item

### Register the skill
data modify storage skills:register name set from storage dynamic_skill:main skill.name
## Setup Data
data modify storage skills:register desc set value ['"[Placeholder]"','"You\'re not supposed to see this."']
data modify storage skills:register item set from storage dynamic_skill:main skill.item
function skills:register
data modify storage dynamic_skill:main skill.id set from storage skills:register id 

## Decode Trigger
function dynamic_skill:internal/decode_trigger_list
# Remove Incomplete Triggers 
data remove storage dynamic_skill:main skill.triggers[{id:-1}]

# Modify Description
execute if score dontSave dynamic_skill matches 0 unless entity @s run data modify storage dynamic_skill:main skill.description prepend value '{"translate":"dynskill.sotd","color":"gold","italic":true}'
data modify storage skills:main skills[-1].desc set from storage dynamic_skill:main skill.description

# Debug Output
#tellraw @a [{"text":"","color":"gold"},"Remaining Bits: ",{"storage":"dynamic_skill:main","nbt":"binary"}]
#tellraw @a [{"text":"","color":"gray"},"Decoded Skill: ",{"storage":"dynamic_skill:main","nbt":"skill"}]

# description display
data modify storage dynamic_skill:main description set from storage dynamic_skill:main skill.description
data modify storage dynamic_skill:main combined_description set value ""
function dynamic_skill:internal/combine_description
data modify storage skills:main skills[-1].comb_desc set from storage dynamic_skill:main combined_description
data modify storage dynamic_skill:main skill.comb_desc set from storage dynamic_skill:main combined_description


# store skill 
execute if score dontSave dynamic_skill matches 0 run data modify storage dynamic_skill:main skills append from storage dynamic_skill:main skill
execute if score dontSave dynamic_skill matches 0 if entity @s run tellraw @a [{"translate":"dynskill.added_skill","with":[{"selector":"@s"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}]
execute if score dontSave dynamic_skill matches 0 unless entity @s run tellraw @a [{"translate":"dynskill.sotd.msg","color":"gray","with":[{"translate":"dynskill.sotd","color":"gold","bold":true},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}]


# Delete Skill if from Book
execute if score dontSave dynamic_skill matches 1 as @p[tag=skillSubmitter] run function dynamic_skill:book/preview_skill

scoreboard players set dontSave dynamic_skill 0