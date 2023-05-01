# Setup
data modify storage skills:main temp set from storage skills:main skills
data modify block 0 0 0 Items set value []

# remove first 21 skills 
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]
data remove storage skills:main temp[0]

# Load
scoreboard players set count skills 0
function skills:load/load_once
loot replace entity @s enderchest.0 7 mine 0 0 0 minecraft:shulker_box
scoreboard players set count skills 0
function skills:load/load_once
loot replace entity @s enderchest.9 7 mine 0 0 0 minecraft:shulker_box
scoreboard players set count skills 0
function skills:load/load_once
loot replace entity @s enderchest.18 7 mine 0 0 0 minecraft:shulker_box

# Reset
data remove storage skills:main skill