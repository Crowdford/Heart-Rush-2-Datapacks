# create
execute if entity @s[team=red] align y run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Tags:["skillObject","newSkillObject"],Team:"red",ArmorItems:[{},{},{},{id:"stone",Count:1}],Small:1,Glowing:0,NoGravity:1,DisabledSlots:4144959}
execute if entity @s[team=blue] align y run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Tags:["skillObject","newSkillObject"],Team:"blue",ArmorItems:[{},{},{},{id:"stone",Count:1}],Small:1,Glowing:0,NoGravity:1,DisabledSlots:4144959}
execute if entity @s[team=green] align y run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Tags:["skillObject","newSkillObject"],Team:"green",ArmorItems:[{},{},{},{id:"stone",Count:1}],Small:1,Glowing:0,NoGravity:1,DisabledSlots:4144959}
execute if entity @s[team=yellow] align y run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Tags:["skillObject","newSkillObject"],Team:"yellow",ArmorItems:[{},{},{},{id:"stone",Count:1}],Small:1,Glowing:0,NoGravity:1,DisabledSlots:4144959}

# block
execute if score $1 SkillParams matches 1 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "tnt"
execute if score $1 SkillParams matches 2 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "beacon"
execute if score $1 SkillParams matches 3 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "gold_block"
execute if score $1 SkillParams matches 4 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "magma_block"
execute if score $1 SkillParams matches 5 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "diamond_block"
execute if score $1 SkillParams matches 6 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "bedrock"
execute if score $1 SkillParams matches 7 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "enchanting_table"
execute if score $1 SkillParams matches 8 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "honeycomb_block"
execute if score $1 SkillParams matches 9 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "chest"
execute if score $1 SkillParams matches 10 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "cactus"
execute if score $1 SkillParams matches 11 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "ice"
execute if score $1 SkillParams matches 12 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "target"
execute if score $1 SkillParams matches 13 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "redstone_block"
execute if score $1 SkillParams matches 14 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "smooth_quartz"
execute if score $1 SkillParams matches 15 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "magenta_stained_glass"
execute if score $1 SkillParams matches 16 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ArmorItems[3].id set value "sea_lantern"

# glowing
execute if score $2 SkillParams matches 1 run data modify entity @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] Glowing set value 1b

# lifetime
scoreboard players operation @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ObjectLife = $3 SkillParams

# object data
scoreboard players operation @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ObjectSkill = $4 SkillParams
scoreboard players operation @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] ObjectID = @s playerID
tag @e[type=armor_stand,tag=newSkillObject,distance=..1,limit=1] remove newSkillObject

