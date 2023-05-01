#tellraw @a {"storage":"dynamic_skill:main","nbt":"args"}

# store to stack
data modify storage dynamic_skill:main stack append from storage dynamic_skill:main trigger

# create trigger from arguments
data modify storage dynamic_skill:main trigger set value {condition:{id:0,args:[]},effects:[]}
data modify storage dynamic_skill:main trigger.effects set from storage dynamic_skill:main args[5]

## handle location
tag @a remove tempDynSel
tag @a remove tempDynSel2
tag @a remove tempDynSel2a
tag @a remove tempDynSel2b
tag @a remove tempDynSel2c
tag @a remove tempDynSel2d
execute store result score $1 SkillParams run data get storage dynamic_skill:main args[1][0]
execute store result score $2 SkillParams run data get storage dynamic_skill:main args[2][0]
execute store result score $3 SkillParams run data get storage dynamic_skill:main args[3][0]
execute store result score $4 SkillParams run data get storage dynamic_skill:main args[4][0]
execute if score $4 SkillParams matches 0 run tag @a[gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 1 run tag @a[distance=0.1..,gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 2 run tag @a[distance=5..,gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 3 run tag @a[distance=10..,gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 4 run tag @a[distance=0.1..5,gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 5 run tag @a[distance=0.1..7,gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 6 run tag @a[distance=0.1..10,gamemode=adventure] add tempDynSel
execute if score $4 SkillParams matches 7 run tag @a[distance=0.1..15,gamemode=adventure] add tempDynSel
execute if score $3 SkillParams matches 1 if entity @s[team=red] run tag @a[team=!red] remove tempDynSel
execute if score $3 SkillParams matches 1 if entity @s[team=blue] run tag @a[team=!blue] remove tempDynSel
execute if score $3 SkillParams matches 1 if entity @s[team=green] run tag @a[team=!green] remove tempDynSel
execute if score $3 SkillParams matches 1 if entity @s[team=yellow] run tag @a[team=!yellow] remove tempDynSel
execute if score $3 SkillParams matches 2 if entity @s[team=red] run tag @a[team=red] remove tempDynSel
execute if score $3 SkillParams matches 2 if entity @s[team=blue] run tag @a[team=blue] remove tempDynSel
execute if score $3 SkillParams matches 2 if entity @s[team=green] run tag @a[team=green] remove tempDynSel
execute if score $3 SkillParams matches 2 if entity @s[team=yellow] run tag @a[team=yellow] remove tempDynSel
execute if score $3 SkillParams matches 3 if entity @s[team=red] run tag @a[team=red] remove tempDynSel
execute if score $3 SkillParams matches 3 if entity @s[team=blue] run tag @a[team=blue] remove tempDynSel
execute if score $3 SkillParams matches 3 if entity @s[team=green] run tag @a[team=green] remove tempDynSel
execute if score $3 SkillParams matches 3 if entity @s[team=yellow] run tag @a[team=yellow] remove tempDynSel
scoreboard players operation id Temp = @s deathLPlayerID
execute if score $3 SkillParams matches 3 as @a unless score @s playerID = id Temp run tag @s remove tempDynSel
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 1 run tag @a[tag=tempDynSel,sort=nearest,limit=1] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 2 run tag @a[tag=tempDynSel,sort=nearest,limit=2] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 3 run tag @a[tag=tempDynSel,sort=nearest,limit=3] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 4 run tag @a[tag=tempDynSel,sort=nearest,limit=4] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 5 run tag @a[tag=tempDynSel,sort=nearest,limit=5] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 6 run tag @a[tag=tempDynSel,sort=nearest,limit=6] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 7 run tag @a[tag=tempDynSel,sort=nearest,limit=7] add tempDynSel2
execute if score $1 SkillParams matches 0 if score $2 SkillParams matches 8 run tag @a[tag=tempDynSel,sort=nearest,limit=8] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 1 run tag @a[tag=tempDynSel,sort=furthest,limit=1] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 2 run tag @a[tag=tempDynSel,sort=furthest,limit=2] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 3 run tag @a[tag=tempDynSel,sort=furthest,limit=3] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 4 run tag @a[tag=tempDynSel,sort=furthest,limit=4] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 5 run tag @a[tag=tempDynSel,sort=furthest,limit=5] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 6 run tag @a[tag=tempDynSel,sort=furthest,limit=6] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 7 run tag @a[tag=tempDynSel,sort=furthest,limit=7] add tempDynSel2
execute if score $1 SkillParams matches 1 if score $2 SkillParams matches 8 run tag @a[tag=tempDynSel,sort=furthest,limit=8] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 1 run tag @a[tag=tempDynSel,sort=random,limit=1] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 2 run tag @a[tag=tempDynSel,sort=random,limit=2] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 3 run tag @a[tag=tempDynSel,sort=random,limit=3] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 4 run tag @a[tag=tempDynSel,sort=random,limit=4] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 5 run tag @a[tag=tempDynSel,sort=random,limit=5] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 6 run tag @a[tag=tempDynSel,sort=random,limit=6] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 7 run tag @a[tag=tempDynSel,sort=random,limit=7] add tempDynSel2
execute if score $1 SkillParams matches 2 if score $2 SkillParams matches 8 run tag @a[tag=tempDynSel,sort=random,limit=8] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 1 run tag @a[tag=tempDynSel,sort=arbitrary,limit=1] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 2 run tag @a[tag=tempDynSel,sort=arbitrary,limit=2] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 3 run tag @a[tag=tempDynSel,sort=arbitrary,limit=3] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 4 run tag @a[tag=tempDynSel,sort=arbitrary,limit=4] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 5 run tag @a[tag=tempDynSel,sort=arbitrary,limit=5] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 6 run tag @a[tag=tempDynSel,sort=arbitrary,limit=6] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 7 run tag @a[tag=tempDynSel,sort=arbitrary,limit=7] add tempDynSel2
execute if score $1 SkillParams matches 3 if score $2 SkillParams matches 8 run tag @a[tag=tempDynSel,sort=arbitrary,limit=8] add tempDynSel2
tag @a remove tempDynSel

# handle effect list
execute store result score $5 SkillParams run data get storage dynamic_skill:main args[0][0]
execute if score $5 SkillParams matches 0 run tag @a[tag=tempDynSel2] add tempDynSel2a
execute if score $5 SkillParams matches 1 run tag @a[tag=tempDynSel2] add tempDynSel2b
execute if score $5 SkillParams matches 2 run tag @a[tag=tempDynSel2] add tempDynSel2c
execute if score $5 SkillParams matches 3 run tag @a[tag=tempDynSel2] add tempDynSel2d

data modify storage dynamic_skill:main stack4 append from storage dynamic_skill:main trigger.effects

execute if entity @a[tag=tempDynSel2,tag=tempDynSel2a] if data storage dynamic_skill:main trigger.effects[0] as @a[tag=tempDynSel2] run function dynamic_skill:execute/special/selector_helper
execute if entity @a[tag=tempDynSel2,tag=tempDynSel2b] if data storage dynamic_skill:main trigger.effects[0] at @a[tag=tempDynSel2] run function dynamic_skill:execute/special/selector_helper
execute if entity @a[tag=tempDynSel2,tag=tempDynSel2c] if data storage dynamic_skill:main trigger.effects[0] as @a[tag=tempDynSel2] at @s run function dynamic_skill:execute/special/selector_helper
execute if entity @a[tag=tempDynSel2,tag=tempDynSel2d] if data storage dynamic_skill:main trigger.effects[0] run function dynamic_skill:execute/special/selector_helper
tag @a remove tempDynSel2
tag @a remove tempDynSel2a
tag @a remove tempDynSel2b
tag @a remove tempDynSel2c
tag @a remove tempDynSel2d

data remove storage dynamic_skill:main stack4[-1]

# load from stack
data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id