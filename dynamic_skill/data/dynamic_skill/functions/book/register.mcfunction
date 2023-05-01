## Register the skill
data modify storage skills:register name set from storage dynamic_skill:main book_skill.name
# Setup Data
data modify storage skills:register desc set from storage dynamic_skill:main book_skill.desc
data modify storage skills:register item set from storage dynamic_skill:main book_skill.item
function skills:register
data modify storage dynamic_skill:main book_skill.id set from storage skills:register id 

execute store result score id Temp run data get storage skills:register id 

# remove skill if already occupied
execute if score id Temp matches 1 run data remove storage dynamic_skill:main skills[{id:1}]
execute if score id Temp matches 2 run data remove storage dynamic_skill:main skills[{id:2}]
execute if score id Temp matches 3 run data remove storage dynamic_skill:main skills[{id:3}]
execute if score id Temp matches 4 run data remove storage dynamic_skill:main skills[{id:4}]
execute if score id Temp matches 5 run data remove storage dynamic_skill:main skills[{id:5}]
execute if score id Temp matches 6 run data remove storage dynamic_skill:main skills[{id:6}]
execute if score id Temp matches 7 run data remove storage dynamic_skill:main skills[{id:7}]
execute if score id Temp matches 8 run data remove storage dynamic_skill:main skills[{id:8}]
execute if score id Temp matches 9 run data remove storage dynamic_skill:main skills[{id:9}]
execute if score id Temp matches 10 run data remove storage dynamic_skill:main skills[{id:10}]
execute if score id Temp matches 11 run data remove storage dynamic_skill:main skills[{id:11}]
execute if score id Temp matches 12 run data remove storage dynamic_skill:main skills[{id:12}]
execute if score id Temp matches 13 run data remove storage dynamic_skill:main skills[{id:13}]
execute if score id Temp matches 14 run data remove storage dynamic_skill:main skills[{id:14}]
execute if score id Temp matches 15 run data remove storage dynamic_skill:main skills[{id:15}]
execute if score id Temp matches 16 run data remove storage dynamic_skill:main skills[{id:16}]
execute if score id Temp matches 17 run data remove storage dynamic_skill:main skills[{id:17}]
execute if score id Temp matches 18 run data remove storage dynamic_skill:main skills[{id:18}]
execute if score id Temp matches 19 run data remove storage dynamic_skill:main skills[{id:19}]
execute if score id Temp matches 20 run data remove storage dynamic_skill:main skills[{id:20}]
execute if score id Temp matches 21 run data remove storage dynamic_skill:main skills[{id:21}]
execute if score id Temp matches 22 run data remove storage dynamic_skill:main skills[{id:22}]
execute if score id Temp matches 23 run data remove storage dynamic_skill:main skills[{id:23}]
execute if score id Temp matches 24 run data remove storage dynamic_skill:main skills[{id:24}]
execute if score id Temp matches 25 run data remove storage dynamic_skill:main skills[{id:25}]
execute if score id Temp matches 26 run data remove storage dynamic_skill:main skills[{id:26}]
execute if score id Temp matches 27 run data remove storage dynamic_skill:main skills[{id:27}]
execute if score id Temp matches 28 run data remove storage dynamic_skill:main skills[{id:28}]
execute if score id Temp matches 29 run data remove storage dynamic_skill:main skills[{id:29}]
execute if score id Temp matches 30 run data remove storage dynamic_skill:main skills[{id:30}]
execute if score id Temp matches 31 run data remove storage dynamic_skill:main skills[{id:31}]
execute if score id Temp matches 32 run data remove storage dynamic_skill:main skills[{id:32}]
execute if score id Temp matches 33 run data remove storage dynamic_skill:main skills[{id:33}]
execute if score id Temp matches 34 run data remove storage dynamic_skill:main skills[{id:34}]
execute if score id Temp matches 35 run data remove storage dynamic_skill:main skills[{id:35}]
execute if score id Temp matches 36 run data remove storage dynamic_skill:main skills[{id:36}]
execute if score id Temp matches 37 run data remove storage dynamic_skill:main skills[{id:37}]
execute if score id Temp matches 38 run data remove storage dynamic_skill:main skills[{id:38}]
execute if score id Temp matches 39 run data remove storage dynamic_skill:main skills[{id:39}]
execute if score id Temp matches 40 run data remove storage dynamic_skill:main skills[{id:40}]
execute if score id Temp matches 41 run data remove storage dynamic_skill:main skills[{id:41}]
execute if score id Temp matches 42 run data remove storage dynamic_skill:main skills[{id:42}]

## register as skill
data modify storage dynamic_skill:main skills append from storage dynamic_skill:main book_skill_data

# message
execute if score id Temp matches 1..42 if entity @p[tag=dynSkillOwner] run tellraw @a [{"translate":"dynskill.added_skill","with":[{"selector":"@p[tag=dynSkillOwner]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"book_skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"book_skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"book_skill.comb_desc","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"book_skill.item"}]]}},"]"]]}]
execute if score id Temp matches 1..42 unless entity @p[tag=dynSkillOwner] run tellraw @a [{"translate":"dynskill.added_skill","with":[{"text":"???","color":"gray"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"book_skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"book_skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"book_skill.comb_desc","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"book_skill.item"}]]}},"]"]]}]
execute unless score id Temp matches 1..42 run tellraw @a {"translate":"dynskill.cant_add","color":"red"}
 tag @a remove dynSkillOwner