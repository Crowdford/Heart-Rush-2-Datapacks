# create
execute align y run summon minecraft:block_display ~ ~0.3 ~ {Tags:["skillObject","newSkillObject"],block_state:{Name:"minecraft:stone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if entity @s[team=red] align y run team join red @e[type=block_display,tag=newSkillObject,distance=..1,limit=1]
execute if entity @s[team=blue] align y run team join blue @e[type=block_display,tag=newSkillObject,distance=..1,limit=1]
execute if entity @s[team=green] align y run team join green @e[type=block_display,tag=newSkillObject,distance=..1,limit=1]
execute if entity @s[team=yellow] align y run team join yellow @e[type=block_display,tag=newSkillObject,distance=..1,limit=1]
execute if entity @s[team=red] align y run tag @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] add objectRed
execute if entity @s[team=blue] align y run tag @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] add objectBlue
execute if entity @s[team=green] align y run tag @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] add objectGreen
execute if entity @s[team=yellow] align y run tag @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] add objectYellow

# block
execute if score $1 SkillParams matches 1 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "tnt"
execute if score $1 SkillParams matches 2 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "beacon"
execute if score $1 SkillParams matches 3 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "gold_block"
execute if score $1 SkillParams matches 4 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "magma_block"
execute if score $1 SkillParams matches 5 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "diamond_block"
execute if score $1 SkillParams matches 6 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "bedrock"
execute if score $1 SkillParams matches 7 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "enchanting_table"
execute if score $1 SkillParams matches 8 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "honeycomb_block"
execute if score $1 SkillParams matches 9 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "chest"
execute if score $1 SkillParams matches 10 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "cactus"
execute if score $1 SkillParams matches 11 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "ice"
execute if score $1 SkillParams matches 12 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "target"
execute if score $1 SkillParams matches 13 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "redstone_block"
execute if score $1 SkillParams matches 14 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "smooth_quartz"
execute if score $1 SkillParams matches 15 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "magenta_stained_glass"
execute if score $1 SkillParams matches 16 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] block_state.Name set value "sea_lantern"

# glowing
execute if score $2 SkillParams matches 1 run data modify entity @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] Glowing set value 1b

# lifetime
scoreboard players operation @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] ObjectLife = $3 SkillParams

# object data
scoreboard players operation @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] ObjectSkill = $4 SkillParams
scoreboard players operation @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] ObjectID = @s playerID
tag @e[type=block_display,tag=newSkillObject,distance=..1,limit=1] remove newSkillObject

