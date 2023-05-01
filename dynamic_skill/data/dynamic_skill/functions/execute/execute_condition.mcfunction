# get args
data modify storage dynamic_skill:main args set from storage dynamic_skill:main trigger.condition.args
execute if data storage dynamic_skill:main args[0] run function dynamic_skill:execute/handle_arguments
execute store result score $id SkillParams run data get storage dynamic_skill:main trigger.skillId
execute if score $id SkillParams matches 0 store result score $id SkillParams run data get storage dynamic_skill:main trigger.effects[0].skillId
execute if score $id SkillParams matches 0 store result score $id SkillParams run data get storage dynamic_skill:main trigger.condition.skillId


#tellraw @a ["cond: ", "$1 ",{"score":{"name":"$1","objective":"SkillParams"}}, " $2 ",{"score":{"name":"$2","objective":"SkillParams"}}, " $3 ",{"score":{"name":"$3","objective":"SkillParams"}}, " $4 ",{"score":{"name":"$4","objective":"SkillParams"}}]

# get id
execute store result score condition dynamic_skill run data get storage dynamic_skill:main trigger.condition.id
scoreboard players set $cond SkillsCondition 0
scoreboard players set met0 SkillsCondition 1
execute if score condition dynamic_skill matches 1 run function skills:condition/random_chance
execute if score condition dynamic_skill matches 2 run function dynamic_skill:execute/counter/match_counter
execute if score condition dynamic_skill matches 3 run function dynamic_skill:execute/cooldown/check_cooldown
execute if score condition dynamic_skill matches 4 run function skills:condition/target_damage
execute if score condition dynamic_skill matches 5 run function skills:condition/match_gold
execute if score condition dynamic_skill matches 6 run function skills:condition/match_health
execute if score condition dynamic_skill matches 7 run function skills:condition/damage_type
execute if score condition dynamic_skill matches 8 run function dynamic_skill:execute/cooldown/check_cooldown_not
execute if score condition dynamic_skill matches 9 run function skills:condition/has_effect_id
execute if score condition dynamic_skill matches 10 run function skills:condition/object_trigger_type
execute if score condition dynamic_skill matches 11 run function skills:condition/target_damage_amount
execute if score condition dynamic_skill matches 12 run function skills:condition/damage_amount
execute if score condition dynamic_skill matches 13 run function skills:condition/match_effect_type
execute if score condition dynamic_skill matches 14 run function skills:condition/match_inventory
execute if score condition dynamic_skill matches 15 run function skills:condition/match_effect_id
execute if score condition dynamic_skill matches 16 run function dynamic_skill:execute/in_range/main
execute if score condition dynamic_skill matches 17 run function skills:condition/match_option
execute if score condition dynamic_skill matches 18 run function skills:condition/match_lives

execute if score condition dynamic_skill matches 101 run function dynamic_skill:execute/limited/condition/match_arrow_type
execute if score condition dynamic_skill matches 102 run function dynamic_skill:execute/limited/condition/match_trident_type
execute if score condition dynamic_skill matches 103 run function dynamic_skill:execute/limited/condition/match_player_type
execute if score condition dynamic_skill matches 104 run function dynamic_skill:execute/limited/condition/on_ground
execute if score condition dynamic_skill matches 105 run function dynamic_skill:execute/limited/condition/not_damage_type

#tellraw @a ["condition: ",{"score":{"name":"met0","objective":"SkillsCondition"}}]