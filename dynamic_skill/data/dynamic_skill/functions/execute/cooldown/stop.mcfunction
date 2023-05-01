# load cooldown
scoreboard players operation $sid SkillParams = $id SkillParams
function dynamic_skill:execute/cooldown/load

# stop cooldown
execute if score @s dynSkill_st matches 1.. run scoreboard players set @s dynSkill_st 1
execute if score @s dynSkill_st matches 1 run function dynamic_skill:execute/cooldown/main

# store cooldown
function dynamic_skill:execute/cooldown/store
