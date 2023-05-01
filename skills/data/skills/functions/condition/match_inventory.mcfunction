execute if score $1 SkillParams matches 10 store result score count Temp run clear @s arrow{arrow:"default"} 0
execute if score $1 SkillParams matches 11 store result score count Temp run clear @s tipped_arrow{arrow:"weakness"} 0
execute if score $1 SkillParams matches 12 store result score count Temp run clear @s tipped_arrow{arrow:"slowness"} 0
execute if score $1 SkillParams matches 13 store result score count Temp run clear @s tipped_arrow{arrow:"poison"} 0
execute if score $1 SkillParams matches 14 store result score count Temp run clear @s spectral_arrow{arrow:"spectral"} 0
execute if score $1 SkillParams matches 15 store result score count Temp run clear @s #minecraft:arrows 0
execute if score $1 SkillParams matches 20 store result score count Temp run clear @s snowball 0
execute if score $1 SkillParams matches 21 store result score count Temp run clear @s carrot_on_a_stick{CustomModelData:7} 0
execute if score $1 SkillParams matches 22 store result score count Temp run clear @s light_gray_dye 0
execute if score $1 SkillParams matches 23 store result score count Temp run clear @s beetroot_seeds 0
execute if score $1 SkillParams matches 24 store result score count Temp run clear @s carrot_on_a_stick{CustomModelData:2} 0
execute if score $1 SkillParams matches 25 store result score count Temp run clear @s carrot_on_a_stick{CustomModelData:4} 0
execute if score $1 SkillParams matches 26 store result score count Temp run clear @s carrot_on_a_stick{CustomModelData:3} 0
execute if score $1 SkillParams matches 27 store result score count Temp run clear @s carrot_on_a_stick{CustomModelData:8} 0
execute if score $1 SkillParams matches 30 store result score count Temp run clear @s crossbow 0
execute if score $1 SkillParams matches 31 store result score count Temp run clear @s firework_rocket 0
execute if score $1 SkillParams matches 32 store result score count Temp run clear @s bee_nest{custom:"block"} 0
execute if score $1 SkillParams matches 33 store result score count Temp run clear @s fishing_rod 0
execute if score $1 SkillParams matches 34 store result score count Temp run clear @s ender_pearl 0
execute if score count Temp < $2 SkillParams run function skills:condition_not_met
execute if score count Temp > $3 SkillParams run function skills:condition_not_met