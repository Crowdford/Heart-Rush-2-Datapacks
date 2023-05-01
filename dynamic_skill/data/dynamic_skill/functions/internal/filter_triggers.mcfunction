execute store result score id dynamic_skill run data get storage dynamic_skill:main triggers[0].id
execute if score id dynamic_skill = trigger dynamic_skill run data modify storage dynamic_skill:main execute append from storage dynamic_skill:main triggers[0]
data remove storage dynamic_skill:main triggers[0]
execute if data storage dynamic_skill:main triggers[0] run function dynamic_skill:internal/filter_triggers