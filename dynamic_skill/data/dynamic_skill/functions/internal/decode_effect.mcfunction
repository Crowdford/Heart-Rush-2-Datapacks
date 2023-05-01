# get effect
data modify storage dynamic_skill:main effect set value {id:-1,args:[],skillId:-1}
data modify storage dynamic_skill:main effect.skillId set from storage dynamic_skill:main skill.id
data modify storage text:lib all set from storage dynamic_skill:trees effects
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main effect.id set from storage text:out chars[0]
data modify storage dynamic_skill:main binary set from storage text:int bits
execute store result score effect dynamic_skill run data get storage text:out chars[0]


### special handler for trigger specific limited effects 
execute store result score trigger dynamic_skill run data get storage dynamic_skill:main trigger.id
#tellraw @a ["trigger: ",{"score":{"name":"trigger","objective":"dynamic_skill"}}]
#tellraw @a ["effect: ",{"score":{"name":"effect","objective":"dynamic_skill"}}]

# uneffect for effect stack start
execute if score trigger dynamic_skill matches 24 if score effect dynamic_skill matches 27 run data modify storage dynamic_skill:main effect.id set value 101
execute if score trigger dynamic_skill matches 24 if score effect dynamic_skill matches 27 run scoreboard players set effect dynamic_skill 101
# unselect for on selection
execute if score trigger dynamic_skill matches 44 if score effect dynamic_skill matches 27 run data modify storage dynamic_skill:main effect.id set value 102
execute if score trigger dynamic_skill matches 44 if score effect dynamic_skill matches 27 run scoreboard players set effect dynamic_skill 102
# instant trident return for trident shot/hit player/miss
execute if score trigger dynamic_skill matches 12 if score effect dynamic_skill matches 27 run data modify storage dynamic_skill:main effect.id set value 103
execute if score trigger dynamic_skill matches 12 if score effect dynamic_skill matches 27 run scoreboard players set effect dynamic_skill 103
execute if score trigger dynamic_skill matches 22 if score effect dynamic_skill matches 27 run data modify storage dynamic_skill:main effect.id set value 103
execute if score trigger dynamic_skill matches 22 if score effect dynamic_skill matches 27 run scoreboard players set effect dynamic_skill 103
execute if score trigger dynamic_skill matches 35 if score effect dynamic_skill matches 27 run data modify storage dynamic_skill:main effect.id set value 103
execute if score trigger dynamic_skill matches 35 if score effect dynamic_skill matches 27 run scoreboard players set effect dynamic_skill 103

# effect argument
function dynamic_skill:internal/effect/decode_arguments
function dynamic_skill:internal/effect/get_translation
