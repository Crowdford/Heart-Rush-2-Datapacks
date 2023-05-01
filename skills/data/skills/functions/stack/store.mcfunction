data modify storage skills:main stack_element set value {id:0,cond:0,player:0}
execute store result storage skills:main stack_element.id int 1 run scoreboard players get $id SkillParams
execute store result storage skills:main stack_element.cond int 1 run scoreboard players get $cond SkillsCondition
execute store result storage skills:main stack_element.player int 1 run scoreboard players get @p[tag=skillTriggerTemp] playerID
tag @a remove skillTriggerTemp
data modify storage skills:main stack append from storage skills:main stack_element