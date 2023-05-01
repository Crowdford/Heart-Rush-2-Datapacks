scoreboard players operation $3 SkillParams >< $4 SkillParams
# get player data
execute if score $3 SkillParams matches 00 run function dynamic_skill:execute/in_range/3_0
execute if score $3 SkillParams matches 05 run function dynamic_skill:execute/in_range/3_5
execute if score $3 SkillParams matches 10 run function dynamic_skill:execute/in_range/3_10
execute if score $3 SkillParams matches 15 run function dynamic_skill:execute/in_range/3_15
execute if score $3 SkillParams matches 20 run function dynamic_skill:execute/in_range/3_20
execute if score $3 SkillParams matches 25 run function dynamic_skill:execute/in_range/3_25
execute if score $3 SkillParams matches 30 run function dynamic_skill:execute/in_range/3_30
execute if score $3 SkillParams matches 35 run function dynamic_skill:execute/in_range/3_35

# calculate player data
scoreboard players set players dynamic_skill 0
execute unless score $1 SkillParams matches 1 run function dynamic_skill:execute/in_range/1_not2
execute if score $1 SkillParams matches 1 run function dynamic_skill:execute/in_range/1_2
execute if score $1 SkillParams matches 2 run function dynamic_skill:execute/in_range/1_3

# check data
execute if score $4 SkillParams matches 0 unless score players dynamic_skill <= $2 SkillParams run function skills:condition_not_met
execute if score $4 SkillParams matches 1 unless score players dynamic_skill >= $2 SkillParams run function skills:condition_not_met