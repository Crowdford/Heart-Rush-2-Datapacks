execute if score $1 SkillParams matches 00 run summon zombie ~ ~ ~ {Tags:["new_entity_dyn"],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1,tag:{Unbreakable:1}}]}
execute if score $1 SkillParams matches 01 run summon skeleton ~ ~ ~ {Tags:["new_entity_dyn"],HandItems:[{id:"bow",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1,tag:{Unbreakable:1}}]}
execute if score $1 SkillParams matches 02 run summon blaze ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 03 run summon pillager ~ ~ ~ {Tags:["new_entity_dyn"],HandItems:[{id:"crossbow",Count:1}]}
execute if score $1 SkillParams matches 04 run summon lightning_bolt ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 04 run scoreboard players set @s dmgLightning 30
execute if score $1 SkillParams matches 05 run summon cod ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 06 run summon vex ~ ~ ~ {Tags:["new_entity_dyn"],HandItems:[{id:"iron_sword",Count:1}]}
execute if score $1 SkillParams matches 07 run summon evoker_fangs ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 07 run data modify entity @e[tag=new_entity_dyn,limit=1] Owner set from entity @s UUID
execute if score $1 SkillParams matches 08 run summon cave_spider ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 09 run summon creeper ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 10 run summon pufferfish ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 11 run summon phantom ~ ~ ~ {Tags:["new_entity_dyn"],ActiveEffects:[{Id:12,Amplifier:120b,Duration:999999}],HasVisualFire:0}
execute if score $1 SkillParams matches 12 run summon piglin_brute ~ ~ ~ {Tags:["new_entity_dyn"],HandItems:[{id:"golden_axe",Count:1}],IsImmuneToZombification:1b}
execute if score $1 SkillParams matches 13 run summon ravager ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 14 run summon shulker ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if score $1 SkillParams matches 15 run summon witch ~ ~ ~ {Tags:["new_entity_dyn"]}
execute if entity @s[team=red] run team join red @e[tag=new_entity_dyn,distance=..1]
execute if entity @s[team=blue] run team join blue @e[tag=new_entity_dyn,distance=..1]
execute if entity @s[team=green] run team join green @e[tag=new_entity_dyn,distance=..1]
execute if entity @s[team=yellow] run team join yellow @e[tag=new_entity_dyn,distance=..1]
scoreboard players operation @e[tag=new_entity_dyn] lifetime = $2 SkillParams
tag @e remove new_entity_dyn

