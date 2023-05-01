# remove tags
tag @s remove dynSkill_trigger0
tag @s remove dynSkill_trigger1
tag @s remove dynSkill_trigger2
tag @s remove dynSkill_trigger3
tag @s remove dynSkill_trigger4
tag @s remove dynSkill_trigger5
tag @s remove dynSkill_trigger6
tag @s remove dynSkill_trigger7
tag @s remove dynSkill_trigger8
tag @s remove dynSkill_trigger9
tag @s remove dynSkill_trigger10
tag @s remove dynSkill_trigger11
tag @s remove dynSkill_trigger12
tag @s remove dynSkill_trigger13
tag @s remove dynSkill_trigger14
tag @s remove dynSkill_trigger15
tag @s remove dynSkill_trigger16
tag @s remove dynSkill_trigger17
tag @s remove dynSkill_trigger18
tag @s remove dynSkill_trigger19
tag @s remove dynSkill_trigger20
tag @s remove dynSkill_trigger21
tag @s remove dynSkill_trigger22
tag @s remove dynSkill_trigger23
tag @s remove dynSkill_trigger24
tag @s remove dynSkill_trigger25
tag @s remove dynSkill_trigger26
tag @s remove dynSkill_trigger27
tag @s remove dynSkill_trigger28
tag @s remove dynSkill_trigger29
tag @s remove dynSkill_trigger30
tag @s remove dynSkill_trigger31
tag @s remove dynSkill_trigger32
tag @s remove dynSkill_trigger33
tag @s remove dynSkill_trigger34
tag @s remove dynSkill_trigger35
tag @s remove dynSkill_trigger36
tag @s remove dynSkill_trigger37
tag @s remove dynSkill_trigger38
tag @s remove dynSkill_trigger39
tag @s remove dynSkill_trigger40
tag @s remove dynSkill_trigger41
tag @s remove dynSkill_trigger42
tag @s remove dynSkill_trigger43
tag @s remove dynSkill_trigger44
tag @s remove dynSkill_trigger45

# get selected skills
function dynamic_skill:internal/get_selected_skills

# assign trigger tags
data modify storage dynamic_skill:main sel_skills_copy set from storage dynamic_skill:main sel_skills
function dynamic_skill:internal/get_tags