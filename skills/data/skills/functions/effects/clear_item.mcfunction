execute if score $1 SkillParams matches 10 run clear @s arrow{arrow:"default"} 1
execute if score $1 SkillParams matches 11 run clear @s tipped_arrow{arrow:"weakness"} 1
execute if score $1 SkillParams matches 12 run clear @s tipped_arrow{arrow:"slowness"} 1
execute if score $1 SkillParams matches 13 run clear @s tipped_arrow{arrow:"poison"} 1
execute if score $1 SkillParams matches 14 run clear @s spectral_arrow{arrow:"spectral"} 1
execute if score $1 SkillParams matches 15 run clear @s #minecraft:arrows 1
execute if score $1 SkillParams matches 20 run clear @s snowball 1
execute if score $1 SkillParams matches 21 run clear @s carrot_on_a_stick{CustomModelData:7} 1
execute if score $1 SkillParams matches 22 run clear @s light_gray_dye 1
execute if score $1 SkillParams matches 23 run clear @s beetroot_seeds 1
execute if score $1 SkillParams matches 24 run clear @s carrot_on_a_stick{CustomModelData:2} 1
execute if score $1 SkillParams matches 25 run clear @s carrot_on_a_stick{CustomModelData:4} 1
execute if score $1 SkillParams matches 26 run clear @s carrot_on_a_stick{CustomModelData:3} 1
execute if score $1 SkillParams matches 27 run clear @s carrot_on_a_stick{CustomModelData:8} 1
execute if score $1 SkillParams matches 30 run clear @s crossbow 1
execute if score $1 SkillParams matches 31 run clear @s firework_rocket 1
execute if score $1 SkillParams matches 32 run clear @s bee_nest{custom:"block"} 1
execute if score $1 SkillParams matches 33 run clear @s fishing_rod 1
execute if score $1 SkillParams matches 34 run clear @s ender_pearl 1
scoreboard players remove $2 SkillParams 1
execute if score $2 SkillParams matches 1.. run function skills:effects/clear_item
