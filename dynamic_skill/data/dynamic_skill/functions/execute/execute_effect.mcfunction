## save the trigger to stack in case the effect causes recursion
data modify storage dynamic_skill:main stack2 append from storage dynamic_skill:main trigger
data modify storage dynamic_skill:main stack3 append from storage dynamic_skill:main execute


# handle arguments
data modify storage dynamic_skill:main args set from storage dynamic_skill:main trigger.effects[0].args
execute if data storage dynamic_skill:main args[0] run function dynamic_skill:execute/handle_arguments
execute store result score $id SkillParams run data get storage dynamic_skill:main trigger.skillId
execute if score $id SkillParams matches 0 store result score $id SkillParams run data get storage dynamic_skill:main trigger.effects[0].skillId
execute if score $id SkillParams matches 0 store result score $id SkillParams run data get storage dynamic_skill:main trigger.condition.skillId

#tellraw @a ["ef: ", "$1 ",{"score":{"name":"$1","objective":"SkillParams"}}, " $2 ",{"score":{"name":"$2","objective":"SkillParams"}}, " $3 ",{"score":{"name":"$3","objective":"SkillParams"}}, " $4 ",{"score":{"name":"$4","objective":"SkillParams"}}]

# get id
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id
#tellraw @a ["ef: ", {"score":{"name":"effect","objective":"dynamic_skill"}}]

execute if score effect dynamic_skill matches 1 run function skills:effects/give_item
execute if score effect dynamic_skill matches 3 run function skills:effects/explosion
execute if score effect dynamic_skill matches 4 run function skills:effects/mod/arrow_regain
execute if score effect dynamic_skill matches 5 run function skills:effects/mod/gold
execute if score effect dynamic_skill matches 6 run function skills:effects/teleport
execute if score effect dynamic_skill matches 7 run function skills:effects/clear_item
execute if score effect dynamic_skill matches 8 run function dynamic_skill:execute/counter/count
execute if score effect dynamic_skill matches 9 run function dynamic_skill:execute/counter/reset
execute if score effect dynamic_skill matches 10 run function dynamic_skill:execute/cooldown/start
execute if score effect dynamic_skill matches 11 run function dynamic_skill:execute/cooldown/stop
execute if score effect dynamic_skill matches 13 run function skills:effects/mod/shield_cooldown
execute if score effect dynamic_skill matches 14 run function skills:effects/mod/gold_gain
execute if score effect dynamic_skill matches 15 run function skills:effects/mod/respawn
execute if score effect dynamic_skill matches 16 run function skills:effects/block/break
execute if score effect dynamic_skill matches 17 run function skills:effects/elytra
execute if score effect dynamic_skill matches 18 run function skills:effects/tp_back
execute if score effect dynamic_skill matches 19 run function dynamic_skill:execute/create_object
execute if score effect dynamic_skill matches 20 run function skills:effects/mod/damage
execute if score effect dynamic_skill matches 21 run function skills:effects/modify_effect
execute if score effect dynamic_skill matches 22 run function skills:effects/kill_arrow
execute if score effect dynamic_skill matches 23 run function skills:effects/block/place
execute if score effect dynamic_skill matches 24 run function skills:effects/mod/max_health
execute if score effect dynamic_skill matches 25 run function skills:effects/trident_return
execute if score effect dynamic_skill matches 26 run function skills:effects/death
execute if score effect dynamic_skill matches 27 run function skills:effects/undeath
execute if score effect dynamic_skill matches 28 run function skills:effects/block/unbreak
execute if score effect dynamic_skill matches 29 run function skills:effects/arrow_damage
execute if score effect dynamic_skill matches 30 run function skills:effects/set_natural_regen
execute if score effect dynamic_skill matches 31 run function skills:effects/mod/weapon_cooldown
execute if score effect dynamic_skill matches 32 run function skills:effects/mod/killstreak
execute if score effect dynamic_skill matches 33 run function skills:effects/debug
execute if score effect dynamic_skill matches 34 run function skills:effects/nothing
execute if score effect dynamic_skill matches 37 run function dynamic_skill:execute/command/effect
execute if score effect dynamic_skill matches 38 run function dynamic_skill:execute/command/summon
execute if score effect dynamic_skill matches 39 run function dynamic_skill:execute/command/particle
execute if score effect dynamic_skill matches 40 run function dynamic_skill:execute/command/playsound
execute if score effect dynamic_skill matches 45 run function dynamic_skill:execute/command/sp_summon


execute if score effect dynamic_skill matches 2 run function skills:effects/effect
execute if score effect dynamic_skill matches 12 run function dynamic_skill:execute/special/and
execute if score effect dynamic_skill matches 35 run function dynamic_skill:execute/special/location
execute if score effect dynamic_skill matches 36 run function dynamic_skill:execute/special/location_relative
execute if score effect dynamic_skill matches 41 run function dynamic_skill:execute/special/selector
execute if score effect dynamic_skill matches 42 run function dynamic_skill:execute/special/self
execute if score effect dynamic_skill matches 43 run function dynamic_skill:execute/special/raycast
execute if score effect dynamic_skill matches 44 run function dynamic_skill:execute/special/random

execute if score effect dynamic_skill matches 101 run function dynamic_skill:execute/limited/effect/uneffect
execute if score effect dynamic_skill matches 102 run function dynamic_skill:execute/limited/effect/unselect
execute if score effect dynamic_skill matches 103 run function dynamic_skill:execute/limited/effect/instant_trident_return


#tellraw @a ["EF DONE"]

## load from stack
data modify storage dynamic_skill:main execute set from storage dynamic_skill:main stack3[-1]
data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main stack2[-1]
data remove storage dynamic_skill:main stack2[-1]
data remove storage dynamic_skill:main stack3[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id