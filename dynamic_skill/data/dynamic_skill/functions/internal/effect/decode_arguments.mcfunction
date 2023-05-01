data modify storage dynamic_skill:main args_text set value []
# trigger_done
# skills:effects/explosion
# skills:effects/nothing
# skills:effects/teleport
# skills:effects/death
# skills:effects/debug
# skills:effects/kill_arrow
# skills:effects/trident_return
# skills:effects/undeath
# skills:effects/block/break
# skills:effects/block/unbreak
# skills:effects/counter/reset
# skills:effects/stop_cooldown
# skills:effects/uneffect
# skills:effects/unselect
# skills:effects/instant_trident_return
##
# skills:effects/mod/arrow_regain
# skills:effects/mod/weapon_cooldown
# skills:effects/mod/shield_cooldown
# skills:effects/mod/gold_gain
execute if score effect dynamic_skill matches 4 run function dynamic_skill:internal/effect/decode_ticks
execute if score effect dynamic_skill matches 13 run function dynamic_skill:internal/effect/decode_ticks
execute if score effect dynamic_skill matches 31 run function dynamic_skill:internal/effect/decode_ticks
execute if score effect dynamic_skill matches 14 run function dynamic_skill:internal/effect/decode_ticks
# skills:effects/mod/respawn
execute if score effect dynamic_skill matches 15 run function dynamic_skill:internal/effect/decode_ticks2
# skills:effects/elytra
execute if score effect dynamic_skill matches 17 run function dynamic_skill:internal/effect/elytra
# skills:effects/mod/killstreak
execute if score effect dynamic_skill matches 32 run function dynamic_skill:internal/effect/mod_killstreak
# skills:effects/mod/gold
# skills:effects/arrow_damage
execute if score effect dynamic_skill matches 5 run function dynamic_skill:internal/effect/decode_big_number
execute if score effect dynamic_skill matches 29 run function dynamic_skill:internal/effect/decode_big_number
# skills:effects/mod/damage
# skills:effects/mod/max_health
execute if score effect dynamic_skill matches 20 run function dynamic_skill:internal/effect/decode_health
execute if score effect dynamic_skill matches 24 run function dynamic_skill:internal/effect/decode_health
# skills:effects/give_item
# skills:effects/clear_item
execute if score effect dynamic_skill matches 1 run function dynamic_skill:internal/effect/decode_item
execute if score effect dynamic_skill matches 7 run function dynamic_skill:internal/effect/decode_item
# skills:effects/effect
execute if score effect dynamic_skill matches 2 run function dynamic_skill:internal/effect/effect
# skills:effects/modify_effect
execute if score effect dynamic_skill matches 21 run function dynamic_skill:internal/effect/modify_effect
# skills:effects/tp_back
execute if score effect dynamic_skill matches 18 run function dynamic_skill:internal/effect/tp_back
# skills:effects/block/place
execute if score effect dynamic_skill matches 23 run function dynamic_skill:internal/effect/block_place
# skills:effects/counter/count
execute if score effect dynamic_skill matches 8 run function dynamic_skill:internal/effect/counter_count
# skills:effects/cooldown
execute if score effect dynamic_skill matches 10 run function dynamic_skill:internal/effect/cooldown
# skills:effects/set_natural_regen
execute if score effect dynamic_skill matches 30 run function dynamic_skill:internal/effect/boolean
# skills:effects/create_object
execute if score effect dynamic_skill matches 19 run function dynamic_skill:internal/effect/create_object
# skills:effects/command/particle
# skills:effects/command/playsound
execute if score effect dynamic_skill matches 39 run function dynamic_skill:internal/effect/command
execute if score effect dynamic_skill matches 40 run function dynamic_skill:internal/effect/command
# skills:effects/command/effect
execute if score effect dynamic_skill matches 37 run function dynamic_skill:internal/effect/command_effect
# skills:effects/command/summon
execute if score effect dynamic_skill matches 38 run function dynamic_skill:internal/effect/command_summon
# skills:effects/command/sp_summon
execute if score effect dynamic_skill matches 45 run function dynamic_skill:internal/effect/command_sp_summon

# special:and
execute if score effect dynamic_skill matches 12 run function dynamic_skill:internal/effect/special/and
# special:location
execute if score effect dynamic_skill matches 35 run function dynamic_skill:internal/effect/special/location
# special:location_relative
execute if score effect dynamic_skill matches 36 run function dynamic_skill:internal/effect/special/location_relative
# special:selector
execute if score effect dynamic_skill matches 41 run function dynamic_skill:internal/effect/special/selector
# special:self
execute if score effect dynamic_skill matches 42 run function dynamic_skill:internal/effect/special/self
# special:raycast
execute if score effect dynamic_skill matches 43 run function dynamic_skill:internal/effect/special/raycast
# special:random
execute if score effect dynamic_skill matches 44 run function dynamic_skill:internal/effect/special/random

