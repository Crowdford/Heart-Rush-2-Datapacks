data modify storage dynamic_skill:main args_text set value []
# none
# skills:condition/check_cooldown
# skills:condition/check_cooldown_not
#
# skills:condition/random_chance
execute if score condition dynamic_skill matches 1 run function dynamic_skill:internal/condition/random_chance
# skills:condition/target_damage
# skills:condition/damage_type
# skills:condition/not_damage_type
execute if score condition dynamic_skill matches 4 run function dynamic_skill:internal/condition/damage_type
execute if score condition dynamic_skill matches 7 run function dynamic_skill:internal/condition/damage_type
execute if score condition dynamic_skill matches 105 run function dynamic_skill:internal/condition/damage_type
# skills:condition/target_damage_amount
# skills:condition/damage_amount
# skills:condition/match_health
execute if score condition dynamic_skill matches 11 run function dynamic_skill:internal/condition/health_check
execute if score condition dynamic_skill matches 12 run function dynamic_skill:internal/condition/health_check
execute if score condition dynamic_skill matches 6 run function dynamic_skill:internal/condition/health_check
# skills:condition/match_gold
execute if score condition dynamic_skill matches 5 run function dynamic_skill:internal/condition/match_gold
# skills:condition/match_counter
execute if score condition dynamic_skill matches 2 run function dynamic_skill:internal/condition/match_counter
# skills:condition/match_option
execute if score condition dynamic_skill matches 17 run function dynamic_skill:internal/condition/match_option
# skills:condition/has_effect_id
execute if score condition dynamic_skill matches 9 run function dynamic_skill:internal/condition/has_effect_id
# skills:condition/in_range
execute if score condition dynamic_skill matches 16 run function dynamic_skill:internal/condition/in_range
# skills:condition/match_inventory
execute if score condition dynamic_skill matches 14 run function dynamic_skill:internal/condition/match_inventory
# skills:condition/match_lives
execute if score condition dynamic_skill matches 18 run function dynamic_skill:internal/condition/match_lives
# skills:condition/object_trigger_type
execute if score condition dynamic_skill matches 10 run function dynamic_skill:internal/condition/object_trigger_type
# skills:condition/match_effect_type
execute if score condition dynamic_skill matches 13 run function dynamic_skill:internal/condition/match_effect_type
# skills:condition/match_effect_id
execute if score condition dynamic_skill matches 15 run function dynamic_skill:internal/condition/match_effect_id

# skills:condition/match_arrow_type
execute if score condition dynamic_skill matches 101 run function dynamic_skill:internal/condition/match_arrow_type
# skills:condition/match_trident_type
execute if score condition dynamic_skill matches 102 run function dynamic_skill:internal/condition/match_trident_type
# skills:condition/match_player_type
execute if score condition dynamic_skill matches 103 run function dynamic_skill:internal/condition/match_player_type
# skills:condition/on_ground
execute if score condition dynamic_skill matches 104 run function dynamic_skill:internal/condition/on_ground

