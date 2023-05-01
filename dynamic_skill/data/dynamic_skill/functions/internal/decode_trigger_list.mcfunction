# decode trigger
function dynamic_skill:internal/decode_trigger

# write back
data modify storage dynamic_skill:main skill.triggers append from storage dynamic_skill:main trigger

# remove trigger if no effects
execute store result score effects dynamic_skill if data storage dynamic_skill:main trigger.effects[]
execute store result score condition dynamic_skill run data get storage dynamic_skill:main trigger.condition.id
execute unless score effects dynamic_skill matches 1.. run data remove storage dynamic_skill:main skill.triggers[-1]
execute unless score effects dynamic_skill matches 1.. run data remove storage dynamic_skill:main skill.description[-1]
execute unless score effects dynamic_skill matches 1.. if score condition dynamic_skill matches 1.. run data remove storage dynamic_skill:main skill.description[-1]

# recursion (at least 6 bits (possibly more I didnt check tbh) need to be left for anything meaningful to be here)
execute if data storage dynamic_skill:main binary[5] run function dynamic_skill:internal/decode_trigger_list