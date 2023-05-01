# get condition id
data modify storage dynamic_skill:main condition set value {id:-1,args:[]}
data modify storage dynamic_skill:main condition.skillId set from storage dynamic_skill:main skill.id
data modify storage text:lib all set from storage dynamic_skill:trees conditions
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert
data modify storage dynamic_skill:main condition.id set from storage text:out chars[0]
data modify storage dynamic_skill:main binary set from storage text:int bits
execute store result score condition dynamic_skill run data get storage text:out chars[0]

### special handler for trigger specific limited effects 
execute store result score trigger dynamic_skill run data get storage dynamic_skill:main trigger.id
#tellraw @a ["trigger: ",{"score":{"name":"trigger","objective":"dynamic_skill"}}]
#tellraw @a ["condition: ",{"score":{"name":"condition","objective":"dynamic_skill"}}]

# arrow type for arrow:nearby
execute if score trigger dynamic_skill matches 30 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 101
execute if score trigger dynamic_skill matches 30 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 101
# trident type for trident:nearby
execute if score trigger dynamic_skill matches 28 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 102
execute if score trigger dynamic_skill matches 28 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 102
# player type for generic:on kill, generic:on point, generic:on death, generic:on respawn
execute if score trigger dynamic_skill matches 43 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 103
execute if score trigger dynamic_skill matches 43 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 103
execute if score trigger dynamic_skill matches 15 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 103
execute if score trigger dynamic_skill matches 15 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 103
execute if score trigger dynamic_skill matches 42 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 103
execute if score trigger dynamic_skill matches 42 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 103
execute if score trigger dynamic_skill matches 41 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 103
execute if score trigger dynamic_skill matches 41 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 103
# on ground for sneaking/not sneaking/player main
execute if score trigger dynamic_skill matches 00 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 104
execute if score trigger dynamic_skill matches 00 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 104
execute if score trigger dynamic_skill matches 32 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 104
execute if score trigger dynamic_skill matches 32 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 104
execute if score trigger dynamic_skill matches 37 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 104
execute if score trigger dynamic_skill matches 37 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 104
# not damage type for on damage / on death
execute if score trigger dynamic_skill matches 02 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 105
execute if score trigger dynamic_skill matches 02 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 105
execute if score trigger dynamic_skill matches 05 if score condition dynamic_skill matches 13 run data modify storage dynamic_skill:main condition.id set value 105
execute if score trigger dynamic_skill matches 05 if score condition dynamic_skill matches 13 run scoreboard players set condition dynamic_skill 105

# decode condition translation / arguments
function dynamic_skill:internal/condition/decode_arguments
function dynamic_skill:internal/condition/get_translation


